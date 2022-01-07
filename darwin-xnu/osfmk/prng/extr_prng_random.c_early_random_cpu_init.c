
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct ccdrbg_state {int dummy; } ;
typedef int nonce ;
typedef int cpu ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int seed; TYPE_2__ drbg_info; struct ccdrbg_state** drbg_states; } ;


 int CCDRBG_STATUS_OK ;
 int assert (int) ;
 int cc_clear (int,int *) ;
 int ccdrbg_init (TYPE_2__*,struct ccdrbg_state*,int,int ,int,int *,int,int*) ;
 TYPE_1__ erandom ;
 struct ccdrbg_state* kalloc (int ) ;
 int master_cpu ;
 int ml_get_timebase () ;
 int panic (char*,...) ;

void
early_random_cpu_init(int cpu)
{
 uint64_t nonce;
 int rc;
 struct ccdrbg_state * state;





 assert(cpu != master_cpu);
 assert(erandom.drbg_states[cpu] == ((void*)0));

 state = kalloc(erandom.drbg_info.size);
 if (state == ((void*)0)) {
  panic("prng_init kalloc failed\n");
 }
 erandom.drbg_states[cpu] = state;





 nonce = ml_get_timebase();
 rc = ccdrbg_init(&erandom.drbg_info, state, sizeof(erandom.seed), erandom.seed, sizeof(nonce), &nonce, sizeof(cpu), &cpu);
 cc_clear(sizeof(nonce), &nonce);
 if (rc != CCDRBG_STATUS_OK)
  panic("ccdrbg_init() returned %d", rc);
}
