
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaLong (int) ;
 int DisaPc ;
 int DisaText ;
 scalar_t__ DisaWord (int) ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static int DisaBranch(int op)
{

  int pc=0,Offset=0;

  static char *BraCode[16]=
  {"bra","bsr","bhi","bls","bcc","bcs","bne","beq",
   "bvc","bvs","bpl","bmi","bge","blt","bgt","ble"};
  char *Bra="";


  Bra=BraCode[(op>>8)&0x0f];


  pc=DisaPc;
  Offset=(char)(op&0xff);
       if (Offset== 0) { Offset=(short)DisaWord(DisaPc); DisaPc+=2; }
  else if (Offset==-1) { Offset= DisaLong(DisaPc); DisaPc+=4; }

  sprintf(DisaText,"%s %x",Bra,pc+Offset);
  return 0;
}
