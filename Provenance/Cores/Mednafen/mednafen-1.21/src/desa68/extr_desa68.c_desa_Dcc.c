
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int reg0; int status; int ea; int branch; scalar_t__* s; } ;


 int DESA68_BRA ;
 int DESA68_BSR ;
 int DESA68_INST ;
 scalar_t__ MODE_ABSW ;
 scalar_t__ MODE_dPC ;
 TYPE_1__ d ;
 char* dbcc_ascii ;
 int desa_ascii (char) ;
 int get_ea_2 (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void desa_Dcc()
{
  desa_ascii(('DB'<<16) + dbcc_ascii[(d.w>>8)&15]);
  desa_ascii(' D0,' + (d.reg0<<8));
  get_ea_2(MODE_ABSW, MODE_dPC-MODE_ABSW, 0);

  d.s[-4] = 0;
  d.branch = d.ea;
  d.status = DESA68_INST | DESA68_BRA | DESA68_BSR;
}
