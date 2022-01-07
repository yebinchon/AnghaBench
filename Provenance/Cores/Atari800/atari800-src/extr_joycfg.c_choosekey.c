
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buffer ;
 int clreol () ;
 int clrscr () ;
 int cputs (char*) ;
 int gotoxy (int,int) ;
 int hi ;
 scalar_t__ kbhit () ;
 int key_done () ;
 int key_init () ;
 char** keynames ;
 int lo ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;

int choosekey(char *title,int oldval)
{
  char msg[80];
  int lastkey;
  int newval;
  int bad;

  clrscr();
  sprintf(msg,"Press key for %s",title);
  gotoxy((78-strlen(msg))/2,8);
  cputs(msg);
  gotoxy(34,9);
  cputs("(ESC=none)");
  sprintf(msg,"Current setting: %s",keynames[oldval]);
  gotoxy((78-strlen(msg))/2,11);
  cputs(msg);
  while (kbhit());
  key_init();

  do{
    while (hi==lo);
    lastkey=buffer[lo++];
    if (lo==100) lo=0;

    bad=(lastkey>=59 && lastkey<=68) || lastkey==87 || lastkey==88 || lastkey==167
        || lastkey==183 || lastkey==70 || lastkey==197;
  }while ((lastkey&0xff00) || *keynames[lastkey&0xff]=='?' || *keynames[lastkey&0xff]=='#' || bad);
  newval=lastkey&0xff;
  if (newval==1) newval=255;
  sprintf(msg,"Current setting: %s",keynames[newval]);
  gotoxy(1,11);
  clreol();
  gotoxy((78-strlen(msg))/2,11);
  cputs(msg);

  do{
    while (hi==lo);
    lastkey=buffer[lo++];
    if (lo==100) lo=0;
  }while(!(lastkey&0xff00));
  key_done();
  return newval;
}
