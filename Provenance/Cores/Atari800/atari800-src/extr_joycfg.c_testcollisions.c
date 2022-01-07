
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BACKGROUND ;
 scalar_t__ MENUITEM ;
 int* buffer ;
 int clrscr () ;
 int cputs (char*) ;
 int gotoxy (int,int) ;
 size_t hi ;
 int key_done () ;
 int key_init () ;
 size_t lo ;
 int* pressed ;
 int showjoy (int,int,int) ;
 int textattr (scalar_t__) ;

void testcollisions()
{
  int i;

  clrscr();
  textattr(BACKGROUND+MENUITEM);
  gotoxy((78-24)/2,3);
  cputs("Test keyboard collisions");
  gotoxy((78-61)/2,5);
  cputs("Here you can test, if the keys you've choosen do not collide.");
  gotoxy((78-43)/2,6);
  cputs("(only few keyboards allow all combinations)");
  gotoxy((78-18)/2,8);
  cputs("Press ESC to exit.");
  for (i=0;i<256;i++) pressed[i]=0;
  key_init();
  do{
    showjoy(17,12,0);
    showjoy(29,12,1);
    showjoy(41,12,2);
    showjoy(53,12,3);
    while (hi==lo);
    pressed[buffer[lo]&0xff]=buffer[lo]<0x100;
    lo++;
    if (lo==100) lo=0;
  }while(!pressed[1]);

  do{
    while (hi==lo);
    pressed[buffer[lo]&0xff]=buffer[lo]<0x100;
    lo++;
    if (lo==100) lo=0;
  }while(pressed[1]);
  key_done();
}
