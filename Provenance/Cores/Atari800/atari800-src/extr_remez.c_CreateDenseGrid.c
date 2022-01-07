
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRIDDENSITY ;
 int NEGATIVE ;

__attribute__((used)) static void CreateDenseGrid(int r, int numtaps, int numband, double bands[],
                            const double des[], const double weight[],
                            int *gridsize, double Grid[],
                            double D[], double W[], int symmetry)
{
 int i, j, k, band;
 double delf, lowf, highf;

 delf = 0.5 / (GRIDDENSITY * r);




 if (symmetry == NEGATIVE && delf > bands[0])
  bands[0] = delf;

 j = 0;
 for (band = 0; band < numband; band++) {
  Grid[j] = bands[2 * band];
  lowf = bands[2 * band];
  highf = bands[2 * band + 1];
  k = (int) ((highf - lowf) / delf + 0.5);
  for (i = 0; i < k; i++) {
   D[j] = des[band];
   W[j] = weight[band];
   Grid[j] = lowf;
   lowf += delf;
   j++;
  }
  Grid[j - 1] = highf;
 }



 if ((symmetry == NEGATIVE) &&
    (Grid[*gridsize - 1] > (0.5 - delf)) &&
    (numtaps % 2))
 {
  Grid[*gridsize - 1] = 0.5 - delf;
 }
}
