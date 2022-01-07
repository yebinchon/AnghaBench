
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexState ;


 int UTF8BUFFSZ ;
 int luaO_utf8esc (char*,int ) ;
 int readutf8esc (int *) ;
 int save (int *,char) ;

__attribute__((used)) static void utf8esc (LexState *ls) {
  char buff[UTF8BUFFSZ];
  int n = luaO_utf8esc(buff, readutf8esc(ls));
  for (; n > 0; n--)
    save(ls, buff[UTF8BUFFSZ - n]);
}
