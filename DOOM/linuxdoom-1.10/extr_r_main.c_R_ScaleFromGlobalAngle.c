
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;
typedef size_t angle_t ;


 size_t ANG90 ;
 size_t ANGLETOFINESHIFT ;
 int FRACUNIT ;
 int FixedDiv (int,int) ;
 int FixedMul (int,int) ;
 int abs (int) ;
 int detailshift ;
 int* finecosine ;
 int* finesine ;
 int projection ;
 int rw_distance ;
 size_t rw_normalangle ;
 size_t viewangle ;

fixed_t R_ScaleFromGlobalAngle (angle_t visangle)
{
    fixed_t scale;
    int anglea;
    int angleb;
    int sinea;
    int sineb;
    fixed_t num;
    int den;
    anglea = ANG90 + (visangle-viewangle);
    angleb = ANG90 + (visangle-rw_normalangle);


    sinea = finesine[anglea>>ANGLETOFINESHIFT];
    sineb = finesine[angleb>>ANGLETOFINESHIFT];
    num = FixedMul(projection,sineb)<<detailshift;
    den = FixedMul(rw_distance,sinea);

    if (den > num>>16)
    {
 scale = FixedDiv (num, den);

 if (scale > 64*FRACUNIT)
     scale = 64*FRACUNIT;
 else if (scale < 256)
     scale = 256;
    }
    else
 scale = 64*FRACUNIT;

    return scale;
}
