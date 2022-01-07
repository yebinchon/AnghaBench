
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_Begin (int ,int ,int) ;
 int GX_End () ;
 int GX_QUADS ;
 int GX_VTXFMT0 ;
 int draw_vert (int,double,double) ;

__attribute__((used)) static inline void draw_square(void)
{
  GX_Begin(GX_QUADS, GX_VTXFMT0, 4);
  draw_vert(3, 0.0, 0.0);
  draw_vert(2, 1.0, 0.0);
  draw_vert(1, 1.0, 1.0);
  draw_vert(0, 0.0, 1.0);
  GX_End();
}
