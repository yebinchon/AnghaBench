
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* gamma_lut; } ;
typedef TYPE_1__ hb_filter_private_t ;


 int pow (float,float) ;

__attribute__((used)) static void build_gamma_lut( hb_filter_private_t * pv )
{
    int i;
    for( i = 0; i < 256; i++ )
    {
        pv->gamma_lut[i] = 4095 * pow( ( (float)i / (float)255 ), 2.2f );
    }
}
