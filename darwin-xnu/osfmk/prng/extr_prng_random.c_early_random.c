
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ccdrbg_state {int dummy; } ;
typedef int result ;
typedef int ps ;
typedef int nonce ;
struct TYPE_8__ {scalar_t__ buffer; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int seedset; TYPE_2__ drbg_info; int seed; struct ccdrbg_state** drbg_states; scalar_t__ master_drbg_state; int drbg_custom; } ;


 int CCDRBG_STATUS_OK ;
 int EARLY_RANDOM_SEED_SIZE ;
 TYPE_5__ EntropyData ;
 int PE_get_random_seed (unsigned char*,int) ;
 int assert (int) ;
 int cc_clear (int,int *) ;
 int ccdrbg_factory_nisthmac (TYPE_2__*,int *) ;
 int ccdrbg_generate (TYPE_2__*,struct ccdrbg_state*,int,int *,int ,int *) ;
 int ccdrbg_init (TYPE_2__*,struct ccdrbg_state*,int,int ,int,int *,int,int*) ;
 int entropy_readall (int *,int ) ;
 TYPE_1__ erandom ;
 size_t master_cpu ;
 int ml_get_timebase () ;
 int panic (char*,int,...) ;
 int read_erandom (int *,int) ;

uint64_t
early_random(void)
{
 uint32_t cnt = 0;
 uint64_t result;
 uint64_t nonce;
 int rc;
 int ps;
 struct ccdrbg_state * state;

 if (!erandom.seedset) {
  erandom.seedset = 1;
  cnt = PE_get_random_seed((unsigned char *)EntropyData.buffer, sizeof(EntropyData.buffer));

  if (cnt < sizeof(EntropyData.buffer)) {




   panic("EntropyData needed %lu bytes, but got %u.\n", sizeof(EntropyData.buffer), cnt);
  }

  entropy_readall(&erandom.seed, EARLY_RANDOM_SEED_SIZE);


  ccdrbg_factory_nisthmac(&erandom.drbg_info, &erandom.drbg_custom);
  assert(erandom.drbg_info.size <= sizeof(erandom.master_drbg_state));
  state = (struct ccdrbg_state *)erandom.master_drbg_state;
  erandom.drbg_states[master_cpu] = state;





  assert(sizeof(erandom.seed) > sizeof(nonce));
  nonce = ml_get_timebase();
  ps = 0;
  rc = ccdrbg_init(&erandom.drbg_info, state, sizeof(erandom.seed), erandom.seed, sizeof(nonce), &nonce, sizeof(ps), &ps);
  cc_clear(sizeof(nonce), &nonce);
  if (rc != CCDRBG_STATUS_OK)
   panic("ccdrbg_init() returned %d", rc);


  rc = ccdrbg_generate(&erandom.drbg_info, state, sizeof(result), &result, 0, ((void*)0));
  if (rc != CCDRBG_STATUS_OK)
   panic("ccdrbg_generate() returned %d", rc);

  return result;
 };

 read_erandom(&result, sizeof(result));

 return result;
}
