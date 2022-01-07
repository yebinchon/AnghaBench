
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__real ;
typedef int FLAC__int32 ;


 int FLAC__ASSERT (int) ;
 unsigned int FLAC__MIN_QLP_COEFF_PRECISION ;
 int FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN ;
 double fabs (int const) ;
 int fprintf (int ,char*,int,int,int,...) ;
 int frexp (double,int*) ;
 scalar_t__ lround (double) ;
 int stderr ;

int FLAC__lpc_quantize_coefficients(const FLAC__real lp_coeff[], unsigned order, unsigned precision, FLAC__int32 qlp_coeff[], int *shift)
{
 unsigned i;
 double cmax;
 FLAC__int32 qmax, qmin;

 FLAC__ASSERT(precision > 0);
 FLAC__ASSERT(precision >= FLAC__MIN_QLP_COEFF_PRECISION);


 precision--;
 qmax = 1 << precision;
 qmin = -qmax;
 qmax--;


 cmax = 0.0;
 for(i = 0; i < order; i++) {
  const double d = fabs(lp_coeff[i]);
  if(d > cmax)
   cmax = d;
 }

 if(cmax <= 0.0) {

  return 2;
 }
 else {
  const int max_shiftlimit = (1 << (FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN-1)) - 1;
  const int min_shiftlimit = -max_shiftlimit - 1;
  int log2cmax;

  (void)frexp(cmax, &log2cmax);
  log2cmax--;
  *shift = (int)precision - log2cmax - 1;

  if(*shift > max_shiftlimit)
   *shift = max_shiftlimit;
  else if(*shift < min_shiftlimit)
   return 1;
 }

 if(*shift >= 0) {
  double error = 0.0;
  FLAC__int32 q;
  for(i = 0; i < order; i++) {
   error += lp_coeff[i] * (1 << *shift);
   q = (FLAC__int32)lround(error);







   if(q > qmax)
    q = qmax;
   else if(q < qmin)
    q = qmin;
   error -= q;
   qlp_coeff[i] = q;
  }
 }




 else {
  const int nshift = -(*shift);
  double error = 0.0;
  FLAC__int32 q;



  for(i = 0; i < order; i++) {
   error += lp_coeff[i] / (1 << nshift);
   q = (FLAC__int32)lround(error);






   if(q > qmax)
    q = qmax;
   else if(q < qmin)
    q = qmin;
   error -= q;
   qlp_coeff[i] = q;
  }
  *shift = 0;
 }

 return 0;
}
