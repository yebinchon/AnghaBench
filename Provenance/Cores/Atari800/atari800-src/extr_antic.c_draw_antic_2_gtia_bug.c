
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int ULONG ;
typedef int UBYTE ;


 int draw_an_gtia_bug (int const*) ;
 int prepare_an_antic_2 (int,int const*,int const*) ;

__attribute__((used)) static void draw_antic_2_gtia_bug(int nchars, const UBYTE *antic_memptr, UWORD *ptr, const ULONG *t_pm_scanline_ptr)
{
 prepare_an_antic_2(nchars, antic_memptr, t_pm_scanline_ptr);
 draw_an_gtia_bug(t_pm_scanline_ptr);
 return;
}
