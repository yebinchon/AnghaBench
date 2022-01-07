
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
line_check(double x, double y, double x1, double y1, double x2, double y2,
   double w, double expand)
{

   double lx = x2 - x1;
   double ly = y2 - y1;
   double len2 = lx*lx + ly*ly;
   double cross, dot;

   x -= x1;
   y -= y1;






   cross = x * ly - y * lx;







   if (cross*cross >= (w+expand)*(w+expand)*len2)
      return 0;






   dot = lx * x + ly * y;
   return dot > -expand && dot < len2+expand;
}
