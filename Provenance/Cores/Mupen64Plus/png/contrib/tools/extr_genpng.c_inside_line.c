
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int width; int y2; int x2; int y1; int x1; } ;


 int line_check (double,double,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static int
inside_line(const struct arg *arg, double x, double y)
{
   return line_check(x, y, arg->x1, arg->y1, arg->x2, arg->y2, arg->width/2, 0);
}
