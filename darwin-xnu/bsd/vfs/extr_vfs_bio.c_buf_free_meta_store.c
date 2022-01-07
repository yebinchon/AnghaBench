
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zone_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {uintptr_t b_datap; scalar_t__ b_bufsize; int b_flags; } ;


 int B_ZALLOC ;
 scalar_t__ ISSET (int ,int ) ;
 int getbufzone (scalar_t__) ;
 int kernel_map ;
 int kmem_free (int ,uintptr_t,scalar_t__) ;
 int zfree (int ,void*) ;

__attribute__((used)) static void
buf_free_meta_store(buf_t bp)
{
 if (bp->b_bufsize) {
  if (ISSET(bp->b_flags, B_ZALLOC)) {
   zone_t z;

   z = getbufzone(bp->b_bufsize);
   zfree(z, (void *)bp->b_datap);
  } else
   kmem_free(kernel_map, bp->b_datap, bp->b_bufsize);

  bp->b_datap = (uintptr_t)((void*)0);
  bp->b_bufsize = 0;
 }
}
