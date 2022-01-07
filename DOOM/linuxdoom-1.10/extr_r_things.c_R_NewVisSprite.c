
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vissprite_t ;


 size_t MAXVISSPRITES ;
 int overflowsprite ;
 int * vissprite_p ;
 int * vissprites ;

vissprite_t* R_NewVisSprite (void)
{
    if (vissprite_p == &vissprites[MAXVISSPRITES])
 return &overflowsprite;

    vissprite_p++;
    return vissprite_p-1;
}
