
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t fixed_t ;
typedef int byte ;


 size_t FRACBITS ;
 int I_Error (char*,size_t,scalar_t__,int) ;
 scalar_t__ SCREENHEIGHT ;
 unsigned int SCREENWIDTH ;
 size_t centery ;
 int* columnofs ;
 int * dc_colormap ;
 size_t dc_iscale ;
 size_t* dc_source ;
 size_t dc_texturemid ;
 int dc_x ;
 scalar_t__ dc_yh ;
 size_t dc_yl ;
 int ** ylookup ;

void R_DrawColumnLow (void)
{
    int count;
    byte* dest;
    byte* dest2;
    fixed_t frac;
    fixed_t fracstep;

    count = dc_yh - dc_yl;


    if (count < 0)
 return;
    dc_x <<= 1;

    dest = ylookup[dc_yl] + columnofs[dc_x];
    dest2 = ylookup[dc_yl] + columnofs[dc_x+1];

    fracstep = dc_iscale;
    frac = dc_texturemid + (dc_yl-centery)*fracstep;

    do
    {

 *dest2 = *dest = dc_colormap[dc_source[(frac>>FRACBITS)&127]];
 dest += SCREENWIDTH;
 dest2 += SCREENWIDTH;
 frac += fracstep;

    } while (count--);
}
