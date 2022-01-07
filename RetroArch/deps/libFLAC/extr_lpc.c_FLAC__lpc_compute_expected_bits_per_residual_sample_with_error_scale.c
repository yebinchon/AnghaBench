
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_LN2 ;
 double log (double) ;

double FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale(double lpc_error, double error_scale)
{
 if(lpc_error > 0.0) {
  double bps = (double)0.5 * log(error_scale * lpc_error) / M_LN2;
  if(bps >= 0.0)
   return bps;
  else
   return 0.0;
 }
 else if(lpc_error < 0.0) {
  return 1e32;
 }
 else {
  return 0.0;
 }
}
