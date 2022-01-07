
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ s8 ;
typedef int s32 ;
struct TYPE_2__ {int w; int memmsk; int status; int branch; scalar_t__ pc; } ;


 int DESA68_BRA ;
 int DESA68_BSR ;
 int DESA68_INST ;
 double* bcc_ascii ;
 TYPE_1__ d ;
 int desa_absL (int) ;
 int desa_ascii (double) ;
 int desa_char (char) ;
 int relPC () ;

__attribute__((used)) static void desa_line6(void)
{
  s32 a;
  int cond = (d.w>>8) & 0xF;
  desa_ascii(('B'<<16) + bcc_ascii[cond]);

  if(d.w&255)
    {
      desa_ascii('.S');
      a = (s32)(s8)d.w;
      a += (s32)d.pc;
    }

  else a = relPC();
  desa_char(' ');

  desa_absL(a&d.memmsk);

  d.status = DESA68_INST | DESA68_BRA | (-(cond!=0) & DESA68_BSR );
  d.branch = a;
}
