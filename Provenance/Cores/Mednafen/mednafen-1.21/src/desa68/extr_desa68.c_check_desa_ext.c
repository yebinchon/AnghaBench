
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; char reg0; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;

__attribute__((used)) static int check_desa_ext()
{
  if((d.w&07670)!=04200)
    return 0;
  desa_ascii('EXT.' );
  desa_ascii((!(d.w&0100)? 'W D0':'L D0') + d.reg0);
  return 1;
}
