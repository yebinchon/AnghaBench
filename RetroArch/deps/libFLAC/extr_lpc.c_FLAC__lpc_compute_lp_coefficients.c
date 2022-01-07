
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double FLAC__real ;


 int FLAC__ASSERT (int) ;
 int FLAC__MAX_LPC_ORDER ;

void FLAC__lpc_compute_lp_coefficients(const FLAC__real autoc[], unsigned *max_order, FLAC__real lp_coeff[][FLAC__MAX_LPC_ORDER], double error[])
{
 unsigned i, j;
 double r, err, lpc[FLAC__MAX_LPC_ORDER];

 FLAC__ASSERT(0 != max_order);
 FLAC__ASSERT(0 < *max_order);
 FLAC__ASSERT(*max_order <= FLAC__MAX_LPC_ORDER);
 FLAC__ASSERT(autoc[0] != 0.0);

 err = autoc[0];

 for(i = 0; i < *max_order; i++) {

  r = -autoc[i+1];
  for(j = 0; j < i; j++)
   r -= lpc[j] * autoc[i-j];
  r /= err;


  lpc[i]=r;
  for(j = 0; j < (i>>1); j++) {
   double tmp = lpc[j];
   lpc[j] += r * lpc[i-1-j];
   lpc[i-1-j] += r * tmp;
  }
  if(i & 1)
   lpc[j] += lpc[j] * r;

  err *= (1.0 - r * r);


  for(j = 0; j <= i; j++)
   lp_coeff[i][j] = (FLAC__real)(-lpc[j]);
  error[i] = err;


  if(err == 0.0) {
   *max_order = i+1;
   return;
  }
 }
}
