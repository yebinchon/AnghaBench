
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Memset (char*,char,int) ;
 int Com_Printf (char*,...) ;

void Info_Print( const char *s ) {
 char key[512];
 char value[512];
 char *o;
 int l;

 if (*s == '\\')
  s++;
 while (*s)
 {
  o = key;
  while (*s && *s != '\\')
   *o++ = *s++;

  l = o - key;
  if (l < 20)
  {
   Com_Memset (o, ' ', 20-l);
   key[20] = 0;
  }
  else
   *o = 0;
  Com_Printf ("%s", key);

  if (!*s)
  {
   Com_Printf ("MISSING VALUE\n");
   return;
  }

  o = value;
  s++;
  while (*s && *s != '\\')
   *o++ = *s++;
  *o = 0;

  if (*s)
   s++;
  Com_Printf ("%s\n", value);
 }
}
