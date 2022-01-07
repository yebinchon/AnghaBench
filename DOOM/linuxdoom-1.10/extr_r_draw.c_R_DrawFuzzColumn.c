
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;
typedef int byte ;


 size_t FUZZTABLE ;
 int I_Error (char*,int,int,size_t) ;
 int SCREENHEIGHT ;
 unsigned int SCREENWIDTH ;
 int centery ;
 int* colormaps ;
 int* columnofs ;
 int dc_iscale ;
 int dc_texturemid ;
 size_t dc_x ;
 int dc_yh ;
 int dc_yl ;
 size_t* fuzzoffset ;
 size_t fuzzpos ;
 int viewheight ;
 int** ylookup ;

void R_DrawFuzzColumn (void)
{
    int count;
    byte* dest;
    fixed_t frac;
    fixed_t fracstep;


    if (!dc_yl)
 dc_yl = 1;


    if (dc_yh == viewheight-1)
 dc_yh = viewheight - 2;

    count = dc_yh - dc_yl;


    if (count < 0)
 return;
    dest = ylookup[dc_yl] + columnofs[dc_x];


    fracstep = dc_iscale;
    frac = dc_texturemid + (dc_yl-centery)*fracstep;




    do
    {




 *dest = colormaps[6*256+dest[fuzzoffset[fuzzpos]]];


 if (++fuzzpos == FUZZTABLE)
     fuzzpos = 0;

 dest += SCREENWIDTH;

 frac += fracstep;
    } while (count--);
}
