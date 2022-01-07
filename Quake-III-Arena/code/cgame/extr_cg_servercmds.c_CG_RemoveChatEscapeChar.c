
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void CG_RemoveChatEscapeChar( char *text ) {
 int i, l;

 l = 0;
 for ( i = 0; text[i]; i++ ) {
  if (text[i] == '\x19')
   continue;
  text[l++] = text[i];
 }
 text[l] = '\0';
}
