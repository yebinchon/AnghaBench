
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double const) ;

__attribute__((used)) static int isDone(int r, const int Ext[], const double E[])
{
 int i;
 double min, max, current;

 min = max = fabs(E[Ext[0]]);
 for (i = 1; i <= r; i++) {
  current = fabs(E[Ext[i]]);
  if (current < min)
   min = current;
  if (current > max)
   max = current;
 }
 if (((max - min) / max) < 0.0001)
  return 1;
 return 0;
}
