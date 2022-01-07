
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deg2rad (double) ;
 double sin (int ) ;

double sin_deg( double deg )
{
   return sin( deg2rad( deg ) );
}
