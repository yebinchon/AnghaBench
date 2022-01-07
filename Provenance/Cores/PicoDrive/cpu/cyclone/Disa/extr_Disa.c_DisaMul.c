
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 char** Tasm ;
 int sprintf (int ,char*,char*,char,char*,char*,char*) ;

__attribute__((used)) static int DisaMul(int op)
{

  int type=0,rea=0,sign=0,ea=0,size=1;
  char reat[64]="",eat[64]="";
  char *opcode[2]={"div","mul"};

  type=(op>>14)&1;
  rea =(op>> 9)&7;
  sign=(op>> 8)&1;
  ea = op&0x3f;

  DisaGetEa(reat,rea,size);
  DisaGetEa( eat, ea,size);

  sprintf(DisaText,"%s%c.%c %s, %s",opcode[type],sign?'s':'u',Tasm[size],eat,reat);
  return 0;
}
