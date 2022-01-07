
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 unsigned int FF_ARRAY_ELEMS (int ) ;
 int ff_dca_st_coeff ;
 int ff_dca_vlc_st_grid ;
 int parse_vlc (int *,int *,int) ;

__attribute__((used)) static int parse_st_code(GetBitContext *s, int min_v)
{
    unsigned int v = parse_vlc(s, &ff_dca_vlc_st_grid, 2) + min_v;

    if (v & 1)
        v = 16 + (v >> 1);
    else
        v = 16 - (v >> 1);

    if (v >= FF_ARRAY_ELEMS(ff_dca_st_coeff))
        v = 16;
    return v;
}
