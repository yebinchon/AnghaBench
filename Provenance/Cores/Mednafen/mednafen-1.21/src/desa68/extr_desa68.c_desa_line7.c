
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ s8 ;
struct TYPE_2__ {int w; scalar_t__ reg9; } ;


 TYPE_1__ d ;
 int desa_ascii (scalar_t__) ;
 int desa_dcw () ;
 int desa_signifiant (int) ;
 int desa_str (char*) ;

__attribute__((used)) static void desa_line7(void)
{
  if(d.w&0400) {
    desa_dcw();
  } else {
    desa_str("MOVEQ #");
    desa_signifiant((int)(s8)d.w);
    desa_ascii(',D0'+d.reg9);
  }
}
