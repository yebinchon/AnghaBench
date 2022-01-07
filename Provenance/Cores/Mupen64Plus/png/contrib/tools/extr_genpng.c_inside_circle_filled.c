
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int y2; int x2; int y1; int x1; } ;


 int circle_check (double,double,int ,int ,int ,int ) ;

__attribute__((used)) static int
inside_circle_filled(const struct arg *arg, double x, double y)
{
   return circle_check(x, y, arg->x1, arg->y1, arg->x2, arg->y2);
}
