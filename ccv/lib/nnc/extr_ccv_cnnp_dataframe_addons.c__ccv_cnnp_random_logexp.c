
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfmt_t ;


 scalar_t__ exp (double) ;
 double log (int) ;
 int sfmt_genrand_real1 (int * const) ;

__attribute__((used)) static float _ccv_cnnp_random_logexp(sfmt_t* const sfmt, const float jitter)
{




 double log_jitter_limit = log(1 + jitter);
 double log_random_jitter = sfmt_genrand_real1(sfmt) * 2 * log_jitter_limit - log_jitter_limit;
 return (float)exp(log_random_jitter);
}
