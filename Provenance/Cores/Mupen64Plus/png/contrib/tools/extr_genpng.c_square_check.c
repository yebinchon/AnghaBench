
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
square_check(double x, double y, double x1, double y1, double x2, double y2)

{
   return ((x<x1) ^ (x<x2)) & ((y<y1) ^ (y<y2));
}
