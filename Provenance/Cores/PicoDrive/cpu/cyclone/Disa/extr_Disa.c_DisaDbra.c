
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaPc ;
 int DisaText ;
 scalar_t__ DisaWord (int) ;
 int sprintf (int ,char*,char*,char*,int) ;

__attribute__((used)) static int DisaDbra(int op)
{

  int dea=0; char deat[64]="";
  int pc=0,Offset=0;

  static char *BraCode[16]=
  {"bt" ,"bra","bhi","bls","bcc","bcs","bne","beq",
   "bvc","bvs","bpl","bmi","bge","blt","bgt","ble"};
  char *Bra="";

  dea=op&7;
  DisaGetEa(deat,dea,2);


  Bra=BraCode[(op>>8)&0xf];


  pc=DisaPc;
  Offset=(short)DisaWord(DisaPc); DisaPc+=2;

  sprintf(DisaText,"d%s %s, %x",Bra,deat,pc+Offset);
  return 0;
}
