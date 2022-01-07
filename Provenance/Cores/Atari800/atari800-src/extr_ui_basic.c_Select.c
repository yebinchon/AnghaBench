
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int y; int x; } ;


 int CenterPrint (int,int,char const*,int) ;
 int ClearRectangle (int,int,int,int,int) ;
 int FILENAME_MAX ;
 int GetKeyPress () ;
 int Print (int,int,char*,int,int,int) ;
 int UI_USER_DELETE ;
 int UI_USER_DRAG_DOWN ;
 int UI_USER_DRAG_UP ;
 int UI_USER_SELECT ;
 int UI_USER_TOGGLE ;
 TYPE_1__ UI_mouse_click ;
 int Util_chrieq (char,char const) ;
 char* Util_stpcpy (char*,char const*) ;
 int strcpy (char*,char const*) ;
 char* strlen (char const*) ;

__attribute__((used)) static int Select(int default_item, int nitems, const char *item[],
                  const char *prefix[], const char *suffix[],
                  const char *tip[], const int nonselectable[],
                  int nrows, int ncolumns, int xoffset, int yoffset,
                  int itemwidth, int drag, const char *global_tip,
                  int *seltype)
{
 int offset = 0;
 int index = default_item;
 int localseltype;

 if (seltype == ((void*)0))
  seltype = &localseltype;

 for (;;) {
  int col;
  int row;
  int i;
  const char *message = global_tip;

  while (index < offset)
   offset -= nrows;
  while (index >= offset + nrows * ncolumns)
   offset += nrows;

  ClearRectangle(0x94, xoffset, yoffset, xoffset + ncolumns * (itemwidth + 1) - 2, yoffset + nrows - 1);
  col = 0;
  row = 0;
  for (i = offset; i < nitems; i++) {
   char szbuf[40 + FILENAME_MAX];
   char *p = szbuf;
   if (prefix != ((void*)0) && prefix[i] != ((void*)0))
    p = Util_stpcpy(szbuf, prefix[i]);
   p = Util_stpcpy(p, item[i]);
   if (suffix != ((void*)0) && suffix[i] != ((void*)0)) {
    char *q = szbuf + itemwidth - strlen(suffix[i]);
    while (p < q)
     *p++ = ' ';
    strcpy(p, suffix[i]);
   }
   else {
    while (p < szbuf + itemwidth)
     *p++ = ' ';
    *p = '\0';
   }
   if (i == index)
    Print(0x94, 0x9a, szbuf, xoffset + col * (itemwidth + 1), yoffset + row, itemwidth);
   else
    Print(0x9a, 0x94, szbuf, xoffset + col * (itemwidth + 1), yoffset + row, itemwidth);
   if (++row >= nrows) {
    if (++col >= ncolumns)
     break;
    row = 0;
   }
  }
  if (tip != ((void*)0) && tip[index] != ((void*)0))
   message = tip[index];
  else if (itemwidth < 38 && (int) strlen(item[index]) > itemwidth)

   message = item[index];
  if (message != ((void*)0))
   CenterPrint(0x94, 0x9a, message, 22);

  for (;;) {
   int ascii;
   int tmp_index;
   ascii = GetKeyPress();
   switch (ascii) {
   case 0x1c:
    if (drag) {
     *seltype = UI_USER_DRAG_UP;
     return index;
    }
    tmp_index = index;
    do
     tmp_index--;
    while (tmp_index >= 0 && nonselectable != ((void*)0) && nonselectable[tmp_index]);
    if (tmp_index >= 0) {
     index = tmp_index;
     break;
    }
    continue;
   case 0x1d:
    if (drag) {
     *seltype = UI_USER_DRAG_DOWN;
     return index;
    }
    tmp_index = index;
    do
     tmp_index++;
    while (tmp_index < nitems && nonselectable != ((void*)0) && nonselectable[tmp_index]);
    if (tmp_index < nitems) {
     index = tmp_index;
     break;
    }
    continue;
   case 0x1e:
    if (drag)
     continue;
    index = (index > nrows) ? index - nrows : 0;
    break;
   case 0x1f:
    if (drag)
     continue;
    index = (index + nrows < nitems) ? index + nrows : nitems - 1;
    break;
   case 0x7f:
    return -2;
   case 0x20:
    *seltype = UI_USER_TOGGLE;
    return index;
   case 0x7e:
    *seltype = UI_USER_DELETE;
    return index;
   case 0x9b:
    *seltype = UI_USER_SELECT;
    return index;
   case 0x1b:
    return -1;
   default:
    if (drag || ascii <= 0x20 || ascii >= 0x7f)
     continue;
    tmp_index = index;
    do {
     if (++index >= nitems)
      index = 0;
    } while (index != tmp_index && !Util_chrieq((char) ascii, item[index][0]));
    break;
   }
   break;
  }
  if (message != ((void*)0))
   ClearRectangle(0x94, 1, 22, 38, 22);
 }
}
