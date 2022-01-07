
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ccdrbg_state {int dummy; } ;
struct TYPE_2__ {int seed; int drbg_info; struct ccdrbg_state** drbg_states; } ;


 int CCDRBG_STATUS_NEED_RESEED ;
 int CCDRBG_STATUS_OK ;
 size_t EARLY_RANDOM_SEED_SIZE ;
 int assert (int) ;
 int cc_clear (int,int ) ;
 int ccdrbg_generate (int *,struct ccdrbg_state*,int ,void*,int ,int *) ;
 int ccdrbg_reseed (int *,struct ccdrbg_state*,int,int ,int ,int *) ;
 int cpu_number () ;
 size_t entropy_readall (int ,size_t) ;
 TYPE_1__ erandom ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int panic (char*,int) ;

__attribute__((used)) static void
read_erandom(void * buffer, u_int numBytes)
{
 int cpu;
 int rc;
 size_t nbytes;
 struct ccdrbg_state * state;

 mp_disable_preemption();
 cpu = cpu_number();
 state = erandom.drbg_states[cpu];
 assert(state);
 for (;;) {

  rc = ccdrbg_generate(&erandom.drbg_info, state, numBytes, buffer, 0, ((void*)0));
  if (rc == CCDRBG_STATUS_OK)
   break;
  if (rc == CCDRBG_STATUS_NEED_RESEED) {

   nbytes = entropy_readall(erandom.seed, EARLY_RANDOM_SEED_SIZE);
   assert(nbytes >= EARLY_RANDOM_SEED_SIZE);
   rc = ccdrbg_reseed(&erandom.drbg_info, state, sizeof(erandom.seed), erandom.seed, 0, ((void*)0));
   cc_clear(sizeof(erandom.seed), erandom.seed);
   if (rc == CCDRBG_STATUS_OK)
    continue;
   panic("read_erandom reseed error %d\n", rc);
  }
  panic("read_erandom ccdrbg error %d\n", rc);
 }
 mp_enable_preemption();
}
