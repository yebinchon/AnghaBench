
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 scalar_t__ INT64_MAX ;
 scalar_t__ fabs (double) ;
 scalar_t__ pow (double,int) ;
 double sqrt (double) ;

void
compute_stats(double *values, uint64_t count, double *average_magnitudep, double *maxp, double *minp, double *stddevp)
{
 uint64_t i;
 double _sum = 0;
 double _max = 0;
 double _min = (double)INT64_MAX;
 double _avg = 0;
 double _dev = 0;

 for (i = 0; i < count; i++) {
  _sum += fabs(values[i]);
  _max = values[i] > _max ? values[i] : _max;
  _min = values[i] < _min ? values[i] : _min;
 }

 _avg = _sum / (double)count;

 _dev = 0;
 for (i = 0; i < count; i++) {
  _dev += pow((values[i] - _avg), 2);
 }

 _dev /= count;
 _dev = sqrt(_dev);

 *average_magnitudep = _avg;
 *maxp = _max;
 *minp = _min;
 *stddevp = _dev;
}
