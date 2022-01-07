
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ w; } ;


 TYPE_1__ d ;
 int desa_char (char) ;
 int desa_str (char*) ;
 int desa_uhexacat (int ,int,char) ;

__attribute__((used)) static void desa_dcw(void)
{
  desa_str("DC.W");
  desa_char (' ');
  desa_uhexacat((u16)d.w, 4, '$');
  d.status = 0;
}
