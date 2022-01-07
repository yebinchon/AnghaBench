
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;
typedef int byte ;


 int I_Error (char*,int,int,size_t) ;
 unsigned int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int* columnofs ;
 void** ds_colormap ;
 size_t* ds_source ;
 int ds_x1 ;
 int ds_x2 ;
 int ds_xfrac ;
 scalar_t__ ds_xstep ;
 size_t ds_y ;
 int ds_yfrac ;
 scalar_t__ ds_ystep ;
 int ** ylookup ;

void R_DrawSpanLow (void)
{
    fixed_t xfrac;
    fixed_t yfrac;
    byte* dest;
    int count;
    int spot;
    xfrac = ds_xfrac;
    yfrac = ds_yfrac;


    ds_x1 <<= 1;
    ds_x2 <<= 1;

    dest = ylookup[ds_y] + columnofs[ds_x1];


    count = ds_x2 - ds_x1;
    do
    {
 spot = ((yfrac>>(16-6))&(63*64)) + ((xfrac>>16)&63);


 *dest++ = ds_colormap[ds_source[spot]];
 *dest++ = ds_colormap[ds_source[spot]];

 xfrac += ds_xstep;
 yfrac += ds_ystep;

    } while (count--);
}
