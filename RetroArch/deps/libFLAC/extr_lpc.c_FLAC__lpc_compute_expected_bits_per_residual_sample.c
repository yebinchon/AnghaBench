
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAC__ASSERT (int) ;
 double FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale (double,double) ;

double FLAC__lpc_compute_expected_bits_per_residual_sample(double lpc_error, unsigned total_samples)
{
 double error_scale;

 FLAC__ASSERT(total_samples > 0);

 error_scale = 0.5 / (double)total_samples;

 return FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale(lpc_error, error_scale);
}
