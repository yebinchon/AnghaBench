
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {uintptr_t dtt_base; uintptr_t dtt_limit; } ;
typedef TYPE_1__ dtrace_toxrange_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* dtrace_toxrange ;
 int dtrace_toxranges ;
 int dtrace_toxranges_max ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static void
dtrace_toxrange_add(uintptr_t base, uintptr_t limit)
{
 if (dtrace_toxranges >= dtrace_toxranges_max) {
  int osize, nsize;
  dtrace_toxrange_t *range;

  osize = dtrace_toxranges_max * sizeof (dtrace_toxrange_t);

  if (osize == 0) {
   ASSERT(dtrace_toxrange == ((void*)0));
   ASSERT(dtrace_toxranges_max == 0);
   dtrace_toxranges_max = 1;
  } else {
   dtrace_toxranges_max <<= 1;
  }

  nsize = dtrace_toxranges_max * sizeof (dtrace_toxrange_t);
  range = kmem_zalloc(nsize, KM_SLEEP);

  if (dtrace_toxrange != ((void*)0)) {
   ASSERT(osize != 0);
   bcopy(dtrace_toxrange, range, osize);
   kmem_free(dtrace_toxrange, osize);
  }

  dtrace_toxrange = range;
 }

 ASSERT(dtrace_toxrange[dtrace_toxranges].dtt_base == 0);
 ASSERT(dtrace_toxrange[dtrace_toxranges].dtt_limit == 0);

 dtrace_toxrange[dtrace_toxranges].dtt_base = base;
 dtrace_toxrange[dtrace_toxranges].dtt_limit = limit;
 dtrace_toxranges++;
}
