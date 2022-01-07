
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int mt_pmi_fn ;


 int EBUSY ;
 int EINVAL ;
 unsigned int MT_CORE_NFIXED ;
 scalar_t__ MT_MIN_FIXED_PERIOD ;
 int assert (int) ;
 unsigned int mt_microstackshot_ctr ;
 void* mt_microstackshot_ctx ;
 int mt_microstackshot_pmi_handler ;
 int mt_microstackshot_start_arch (scalar_t__) ;
 int mt_microstackshots ;

int
mt_microstackshot_start(unsigned int ctr, uint64_t period, mt_pmi_fn handler,
  void *ctx)
{
 assert(ctr < MT_CORE_NFIXED);

 if (period < MT_MIN_FIXED_PERIOD) {
  return EINVAL;
 }
 if (mt_microstackshots) {
  return EBUSY;
 }

 mt_microstackshot_ctr = ctr;
 mt_microstackshot_pmi_handler = handler;
 mt_microstackshot_ctx = ctx;

 int error = mt_microstackshot_start_arch(period);
 if (error) {
  return error;
 }

 mt_microstackshots = 1;

 return 0;
}
