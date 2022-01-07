
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ lock; int ctx; } ;


 int EIO ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 TYPE_2__ prng ;
 int prng_reseed (int *,int ,void*) ;

int
write_random(void * buffer, u_int numbytes)
{
#pragma unused(buffer, numbytes)
 return 0;

}
