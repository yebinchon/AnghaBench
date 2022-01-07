
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Box (int,int,int,int,int,int) ;
 int FALSE ;
 int FILENAME_MAX ;
 int FileSelector (char*,int,char**,int) ;
 int GetKeyPress () ;
 int Plot (int,int,char,int,int) ;
 int Print (int,int,char const*,int,int,int) ;
 int TRUE ;
 int Util_catpath (char*,char*,char*) ;
 int Util_splitpath (char*,char*,char*) ;
 int Util_stpcpy (char*,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int EditString(int fg, int bg, const char *title,
                      char *string, int size, int x, int y, int width,
                      char pDirectories[][FILENAME_MAX], int nDirectories)
{
 int caret = strlen(string);
 int offset = 0;
 for (;;) {
  int i;
  char *p;
  int ascii;
  Box(fg, bg, x, y, x + 1 + width, y + 2);
  Print(bg, fg, title, x + 1, y, width);
  if (caret - offset >= width)
   offset = caret - width + 1;
  else if (caret < offset)
   offset = caret;
  p = string + offset;
  for (i = 0; i < width; i++)
   if (offset + i == caret)
    Plot(bg, fg, *p != '\0' ? *p++ : ' ', x + 1 + i, y + 1);
   else
    Plot(fg, bg, *p != '\0' ? *p++ : ' ', x + 1 + i, y + 1);
  ascii = GetKeyPress();
  switch (ascii) {
  case 0x1e:
   if (caret > 0)
    caret--;
   break;
  case 0x1f:
   if (string[caret] != '\0')
    caret++;
   break;
  case 0x7e:
   if (caret > 0) {
    caret--;
    p = string + caret;
    do
     p[0] = p[1];
    while (*p++ != '\0');
   }
   break;
  case 0xfe:
   if (string[caret] != '\0') {
    p = string + caret;
    do
     p[0] = p[1];
    while (*p++ != '\0');
   }
   break;
  case 0x7d:
  case 0x9c:
   caret = 0;
   string[0] = '\0';
   break;
  case 0x9b:
   if (nDirectories >= 0) {

    char lastchar;
    if (string[0] == '\0')
     return FALSE;
    lastchar = string[strlen(string) - 1];
    return lastchar != '/' && lastchar != '\\';
   }
   return TRUE;
  case 0x1b:
   return FALSE;
  default:

   i = strlen(string);
   if (i + 1 < size && ascii >= ' ' && ascii < 0x7f) {
    do
     string[i + 1] = string[i];
    while (--i >= caret);
    string[caret++] = (char) ascii;
   }
   break;
  }
 }
}
