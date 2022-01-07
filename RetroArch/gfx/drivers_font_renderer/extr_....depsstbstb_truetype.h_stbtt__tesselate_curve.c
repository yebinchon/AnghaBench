
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt__point ;


 int stbtt__add_point (int *,int,float,float) ;

__attribute__((used)) static int stbtt__tesselate_curve(stbtt__point *points, int *num_points,
      float x0, float y0, float x1, float y1, float x2, float y2, float objspace_flatness_squared, int n)
{

   float mx = (x0 + 2*x1 + x2)/4;
   float my = (y0 + 2*y1 + y2)/4;

   float dx = (x0+x2)/2 - mx;
   float dy = (y0+y2)/2 - my;
   if (n > 16)
      return 1;

   if (dx*dx+dy*dy > objspace_flatness_squared)
   {

      stbtt__tesselate_curve(points, num_points, x0,y0, (x0+x1)/2.0f,(y0+y1)/2.0f, mx,my, objspace_flatness_squared,n+1);
      stbtt__tesselate_curve(points, num_points, mx,my, (x1+x2)/2.0f,(y1+y2)/2.0f, x2,y2, objspace_flatness_squared,n+1);
   }
   else
   {
      stbtt__add_point(points, *num_points,x2,y2);
      *num_points = *num_points+1;
   }
   return 1;
}
