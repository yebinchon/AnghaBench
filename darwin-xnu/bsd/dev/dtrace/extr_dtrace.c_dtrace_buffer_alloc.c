
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t processorid_t ;
struct TYPE_5__ {size_t cpu_id; struct TYPE_5__* cpu_next; } ;
typedef TYPE_1__ dtrace_cpu_t ;
struct TYPE_6__ {size_t dtb_size; size_t dtb_cur_limit; size_t dtb_limit; int dtb_flags; int * dtb_xamot; int * dtb_tomax; scalar_t__ dtb_drops; scalar_t__ dtb_offset; } ;
typedef TYPE_2__ dtrace_buffer_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 int CRED () ;
 int DTRACEBUF_NOSWITCH ;
 size_t DTRACE_CPUALL ;
 int EFBIG ;
 int ENOMEM ;
 int KM_NOSLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PRIV_ALL ;
 int PRIV_POLICY_CHOICE (int ,int ,scalar_t__) ;
 TYPE_1__* cpu_list ;
 int cpu_lock ;
 scalar_t__ dtrace_buffer_canalloc (size_t) ;
 size_t dtrace_buffer_memory_inuse ;
 size_t dtrace_buffer_memory_maxsize ;
 int dtrace_lock ;
 scalar_t__ dtrace_nonroot_maxsize ;
 int kmem_free (int *,size_t) ;
 void* kmem_zalloc (size_t,int ) ;

__attribute__((used)) static int
dtrace_buffer_alloc(dtrace_buffer_t *bufs, size_t limit, size_t size, int flags,
    processorid_t cpu)
{
 dtrace_cpu_t *cp;
 dtrace_buffer_t *buf;
 size_t size_before_alloc = dtrace_buffer_memory_inuse;

 LCK_MTX_ASSERT(&cpu_lock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if (size > (size_t)dtrace_nonroot_maxsize &&
     !PRIV_POLICY_CHOICE(CRED(), PRIV_ALL, B_FALSE))
  return (EFBIG);

 cp = cpu_list;

 do {
  if (cpu != DTRACE_CPUALL && cpu != cp->cpu_id)
   continue;

  buf = &bufs[cp->cpu_id];






  if (buf->dtb_tomax != ((void*)0)) {
   ASSERT(buf->dtb_size == size);
   continue;
  }

  ASSERT(buf->dtb_xamot == ((void*)0));


  if (dtrace_buffer_canalloc(size) == B_FALSE)
   goto err;
  if ((buf->dtb_tomax = kmem_zalloc(size, KM_NOSLEEP)) == ((void*)0))
   goto err;
  dtrace_buffer_memory_inuse += size;


  limit = limit == size ? limit - 1 : limit;
  buf->dtb_cur_limit = limit;
  buf->dtb_limit = limit;
  buf->dtb_size = size;
  buf->dtb_flags = flags;
  buf->dtb_offset = 0;
  buf->dtb_drops = 0;

  if (flags & DTRACEBUF_NOSWITCH)
   continue;


  if (dtrace_buffer_canalloc(size) == B_FALSE)
   goto err;
  if ((buf->dtb_xamot = kmem_zalloc(size, KM_NOSLEEP)) == ((void*)0))
   goto err;
  dtrace_buffer_memory_inuse += size;
 } while ((cp = cp->cpu_next) != cpu_list);

 ASSERT(dtrace_buffer_memory_inuse <= dtrace_buffer_memory_maxsize);

 return (0);

err:
 cp = cpu_list;

 do {
  if (cpu != DTRACE_CPUALL && cpu != cp->cpu_id)
   continue;

  buf = &bufs[cp->cpu_id];

  if (buf->dtb_xamot != ((void*)0)) {
   ASSERT(buf->dtb_tomax != ((void*)0));
   ASSERT(buf->dtb_size == size);
   kmem_free(buf->dtb_xamot, size);
  }

  if (buf->dtb_tomax != ((void*)0)) {
   ASSERT(buf->dtb_size == size);
   kmem_free(buf->dtb_tomax, size);
  }

  buf->dtb_tomax = ((void*)0);
  buf->dtb_xamot = ((void*)0);
  buf->dtb_size = 0;
 } while ((cp = cp->cpu_next) != cpu_list);


 dtrace_buffer_memory_inuse = size_before_alloc;

 return (ENOMEM);
}
