
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ square_check (double,double,double,double,double,double) ;

__attribute__((used)) static int
circle_check(double x, double y, double x1, double y1, double x2, double y2)
{
   if (square_check(x, y, x1, y1, x2, y2))
   {

      const double cx = (x1 + x2)/2;
      const double cy = (y1 + y2)/2;
      const double dx = x1 - x2;
      const double dy = y1 - y2;

      x = (x - cx)/dx;
      y = (y - cy)/dy;




      return x*x+y*y < .25;
   }

   return 0;
}
