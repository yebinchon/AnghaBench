
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int passtab ;
typedef int orders ;
struct TYPE_2__ {double member_0; double member_1; double member_2; double member_3; } ;


 int REMEZ_BANDPASS ;
 int REMEZ_CreateFilter (double*,int,int,double*,double*,double*,int ) ;
 int SND_FILTER_SIZE ;
 int exit (int) ;
 int fflush (int ) ;
 double* filter_data ;
 int printf (char*,int const,...) ;
 int stdout ;

__attribute__((used)) static int remez_filter_table(double resamp_rate,
                              double *cutoff, int quality)
{
  int i;
  static const int orders[] = {600, 800, 1000, 1200};
  static const struct {
    int stop;
    double weight;
    double twidth[sizeof(orders)/sizeof(orders[0])];
  } paramtab[] =
  {
    {70, 90, {4.9e-3, 3.45e-3, 2.65e-3, 2.2e-3}},
    {55, 25, {3.4e-3, 2.7e-3, 2.05e-3, 1.7e-3}},
    {40, 6.0, {2.6e-3, 1.8e-3, 1.5e-3, 1.2e-3}},
    {-1, 0, {0, 0, 0, 0}}
  };
  static const double passtab[] = {0.5, 0.6, 0.7};
  int ripple = 0, order = 0;
  int size;
  double weights[2], desired[2], bands[4];
  static const int interlevel = 5;
  double step = 1.0 / interlevel;

  *cutoff = 0.95 * 0.5 * resamp_rate;

  if (quality >= (int) (sizeof(passtab) / sizeof(passtab[0])))
    quality = (int) (sizeof(passtab) / sizeof(passtab[0])) - 1;

  for (ripple = 0; paramtab[ripple].stop > 0; ripple++)
  {
    for (order = 0; order < (int) (sizeof(orders)/sizeof(orders[0])); order++)
    {
      if ((*cutoff - paramtab[ripple].twidth[order])
   > passtab[quality] * 0.5 * resamp_rate)

 goto found;
    }
  }


  ripple--;
  order--;

found:
  size = orders[order] + 1;

  if (size > SND_FILTER_SIZE)
    return 0;

  desired[0] = 1;
  desired[1] = 0;

  weights[0] = 1;
  weights[1] = paramtab[ripple].weight;

  bands[0] = 0;
  bands[2] = *cutoff;
  bands[1] = bands[2] - paramtab[ripple].twidth[order];
  bands[3] = 0.5;

  bands[1] *= (double)interlevel;
  bands[2] *= (double)interlevel;
  REMEZ_CreateFilter(filter_data, (size / interlevel) + 1, 2, bands, desired, weights, REMEZ_BANDPASS);
  for (i = size - interlevel; i >= 0; i -= interlevel)
  {
    int s;
    double h1 = filter_data[i/interlevel];
    double h2 = filter_data[i/interlevel+1];

    for (s = 0; s < interlevel; s++)
    {
      double d = (double)s * step;
      filter_data[i+s] = (h1*(1.0 - d) + h2 * d) * step;
    }
  }


  for (i = size - 2; i >= 0; i--)
    filter_data[i] += filter_data[i + 1];
  return size;
}
