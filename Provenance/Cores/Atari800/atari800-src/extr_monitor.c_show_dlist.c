
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int ANTIC_GetDLByte (int*) ;
 int ANTIC_GetDLWord (int*) ;
 int ANTIC_dlist ;
 int dlist ;
 int get_hex (int*) ;
 scalar_t__ pager () ;
 int printf (char*,...) ;

__attribute__((used)) static void show_dlist(void)
{
 UWORD tdlist = ANTIC_dlist;
 UWORD new_tdlist;
 UBYTE IR;
 int scrnaddr = -1;
 int nlines = 0;
 get_hex(&tdlist);
 new_tdlist = tdlist;
 IR = ANTIC_GetDLByte(&new_tdlist);
 for (;;) {
  printf("%04X: ", tdlist);
  if ((IR & 0x0f) == 0) {
   UBYTE new_IR;
   tdlist = new_tdlist;
   new_IR = ANTIC_GetDLByte(&new_tdlist);
   if (new_IR == IR) {
    int count = 1;
    do {
     count++;
     tdlist = new_tdlist;
     new_IR = ANTIC_GetDLByte(&new_tdlist);
    } while (new_IR == IR && count < 240);
    printf("%dx ", count);
   }
   if (IR & 0x80)
    printf("DLI ");
   printf("%c BLANK\n", ((IR >> 4) & 0x07) + '1');
   IR = new_IR;
  }
  else if ((IR & 0x0f) == 1) {
   tdlist = ANTIC_GetDLWord(&new_tdlist);
   if (IR & 0x80)
    printf("DLI ");
   if (IR & 0x40) {
    printf("JVB %04X\n", tdlist);
    break;
   }
   printf("JMP %04X\n", tdlist);
   new_tdlist = tdlist;
   IR = ANTIC_GetDLByte(&new_tdlist);
  }
  else {
   UBYTE new_IR;
   int new_scrnaddr;
   int count;
   if ((IR & 0x40) && scrnaddr < 0)
    scrnaddr = ANTIC_GetDLWord(&new_tdlist);
   for (count = 1;; count++) {
    tdlist = new_tdlist;
    new_IR = ANTIC_GetDLByte(&new_tdlist);
    if (new_IR != IR || count >= 240) {
     new_scrnaddr = -1;
     break;
    }
    if (IR & 0x40) {
     new_scrnaddr = ANTIC_GetDLWord(&new_tdlist);
     if (new_scrnaddr != scrnaddr)
      break;
    }
   }
   if (count > 1)
    printf("%dx ", count);
   if (IR & 0x80)
    printf("DLI ");
   if (IR & 0x40)
    printf("LMS %04X ", scrnaddr);
   if (IR & 0x20)
    printf("VSCROL ");
   if (IR & 0x10)
    printf("HSCROL ");
   printf("MODE %X\n", IR & 0x0f);
   scrnaddr = new_scrnaddr;
   IR = new_IR;
  }

  if (++nlines == 24) {
   if (pager())
    break;
   nlines = 0;
  }
 }

}
