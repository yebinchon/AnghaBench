
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ viHeight; } ;


 TYPE_1__ gx_mode ;
 scalar_t__ max_height ;

__attribute__((used)) static bool gx_isValidYOrigin(int origin)
{
 if(origin < 0 || gx_mode.viHeight + origin > max_height)
    return 0;
 return 1;
}
