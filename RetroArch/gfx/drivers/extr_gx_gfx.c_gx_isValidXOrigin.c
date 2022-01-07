
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int viWidth; } ;


 TYPE_1__ gx_mode ;
 int gx_used_system_xOrigin ;

__attribute__((used)) static bool gx_isValidXOrigin(int origin)
{
   if(origin < 0 || origin + gx_used_system_xOrigin < 0 ||
         gx_mode.viWidth + origin + gx_used_system_xOrigin > 720)
      return 0;
   return 1;
}
