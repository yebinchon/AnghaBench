
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double Y; double X; double Z; } ;
typedef TYPE_1__ CIE_color ;



__attribute__((used)) static double
chromaticity_y(CIE_color c)
{
   return c.Y / (c.X + c.Y + c.Z);
}
