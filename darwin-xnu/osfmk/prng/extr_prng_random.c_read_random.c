
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ lock; int ctx; } ;


 int CCKPRNG_NEED_ENTROPY ;
 int CCKPRNG_OK ;
 int PRNG_CCKPRNG (int) ;
 int Reseed () ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int panic (char*,int) ;
 TYPE_2__ prng ;
 int prng_generate (int *,int ,void*) ;

void
read_random(void * buffer, u_int numbytes)
{
 int err;

 lck_mtx_lock(prng.lock.mutex);




 for (;;) {
  PRNG_CCKPRNG(err = prng_generate(&prng.ctx, numbytes, buffer));
  if (err == CCKPRNG_OK)
   break;
  if (err == CCKPRNG_NEED_ENTROPY) {
   Reseed();
   continue;
  }
  panic("read_random() error %d\n", err);
 }

 lck_mtx_unlock(prng.lock.mutex);
}
