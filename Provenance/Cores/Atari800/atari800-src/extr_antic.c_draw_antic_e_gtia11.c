
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int ULONG ;
typedef int UBYTE ;


 int draw_an_gtia11 (int const*) ;
 int prepare_an_antic_e (int,int const*,int const*) ;

__attribute__((used)) static void draw_antic_e_gtia11 (int nchars, const UBYTE *antic_memptr, UWORD *ptr, const ULONG *t_pm_scanline_ptr)
{
 prepare_an_antic_e(nchars, antic_memptr, t_pm_scanline_ptr);
 draw_an_gtia11(t_pm_scanline_ptr);
}
