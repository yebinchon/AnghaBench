
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* areasettings; } ;
struct TYPE_3__ {int areaflags; } ;


 int AREA_GROUNDED ;
 TYPE_2__ aasworld ;

int AAS_AreaGrounded(int areanum)
{
 return (aasworld.areasettings[areanum].areaflags & AREA_GROUNDED);
}
