
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int D (int ) ;
 int PBI_NOT_HANDLED ;
 scalar_t__ PIO_GetByte () ;
 int printf (char*,int) ;
 scalar_t__ xld_d_enabled ;

int PBI_XLD_D1GetByte(UWORD addr)
{
 int result = PBI_NOT_HANDLED;
 if (xld_d_enabled && addr == 0xd114) {

  result = (int)PIO_GetByte();
  D(printf("d114: disk read byte:%2x\n",result));
 }
 return result;
}
