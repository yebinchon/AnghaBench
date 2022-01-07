
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t fixed_t ;
typedef int byte ;


 size_t FRACBITS ;
 int I_Error (char*,size_t,scalar_t__,size_t) ;
 scalar_t__ SCREENHEIGHT ;
 unsigned int SCREENWIDTH ;
 size_t centery ;
 int* columnofs ;
 int * dc_colormap ;
 size_t dc_iscale ;
 size_t* dc_source ;
 size_t dc_texturemid ;
 size_t* dc_translation ;
 size_t dc_x ;
 scalar_t__ dc_yh ;
 size_t dc_yl ;
 int ** ylookup ;

void R_DrawTranslatedColumn (void)
{
    int count;
    byte* dest;
    fixed_t frac;
    fixed_t fracstep;

    count = dc_yh - dc_yl;
    if (count < 0)
 return;
    dest = ylookup[dc_yl] + columnofs[dc_x];


    fracstep = dc_iscale;
    frac = dc_texturemid + (dc_yl-centery)*fracstep;


    do
    {





 *dest = dc_colormap[dc_translation[dc_source[frac>>FRACBITS]]];
 dest += SCREENWIDTH;

 frac += fracstep;
    } while (count--);
}
