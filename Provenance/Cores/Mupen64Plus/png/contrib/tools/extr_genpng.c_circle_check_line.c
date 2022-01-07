
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int x1; int x2; int y1; int y2; } ;


 int INSIDE ;
 int OUTSIDE ;
 scalar_t__ circle_check (double,double,double,double,double,double) ;
 int fabs (int) ;

__attribute__((used)) static int
circle_check_line(const struct arg *arg, double x, double y, double w)




{
   double cx = (arg->x1+arg->x2)/2;
   double wx = fabs(arg->x1-arg->x2)/2;
   double cy = (arg->y1+arg->y2)/2;
   double wy = fabs(arg->y1-arg->y2)/2;

   if (circle_check(x, y, cx-wx-w, cy-wy-w, cx+wx+w, cy+wy+w))
   {



      wx -= w;
      wy -= w;
      if (wx > 0 && wy > 0 && circle_check(x, y, cx-wx, cy-wy, cx+wx, cy+wy))
         return INSIDE;

      return 0;
   }

   return OUTSIDE;
}
