
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int * prng_fns_t ;
typedef int buf ;
struct TYPE_3__ {int attrs; int group; int mutex; int group_attrs; } ;
struct TYPE_4__ {int ctx; TYPE_1__ lock; } ;


 int ENTROPY_BUFFER_BYTE_SIZE ;
 int assert (int) ;
 int cc_clear (int,int **) ;
 scalar_t__ cpu_number () ;
 size_t entropy_readall (int **,int) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_alloc_init (int ,int ) ;
 scalar_t__ master_cpu ;
 int nsources ;
 TYPE_2__ prng ;
 int * prng_fns ;
 int prng_init (int *,size_t,int **) ;

void
register_and_init_prng(prng_fns_t fns)
{
 uint8_t buf[nsources][ENTROPY_BUFFER_BYTE_SIZE];
 size_t nbytes;

 assert(cpu_number() == master_cpu);
 assert(prng_fns == ((void*)0));

 prng_fns = fns;


 prng.lock.group_attrs = lck_grp_attr_alloc_init();
 prng.lock.group = lck_grp_alloc_init("random", prng.lock.group_attrs);
 prng.lock.attrs = lck_attr_alloc_init();
 prng.lock.mutex = lck_mtx_alloc_init(prng.lock.group, prng.lock.attrs);

 nbytes = entropy_readall(buf, ENTROPY_BUFFER_BYTE_SIZE);
 (void)prng_init(&prng.ctx, nbytes, buf);
 cc_clear(sizeof(buf), buf);
}
