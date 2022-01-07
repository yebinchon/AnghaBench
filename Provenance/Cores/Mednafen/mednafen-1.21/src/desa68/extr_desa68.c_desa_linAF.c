
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; int w; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_uhexacat (int ,int,char) ;

__attribute__((used)) static void desa_linAF(void)
{
  desa_ascii('LINE');
  desa_ascii('A '+((d.line-0xA)<<8));
  desa_uhexacat(d.w, 3, '$');
}
