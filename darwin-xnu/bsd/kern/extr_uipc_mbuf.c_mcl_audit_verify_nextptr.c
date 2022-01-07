
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mca_addr; } ;
typedef TYPE_1__ mcache_audit_t ;


 int MBUF_IN_MAP (void*) ;
 scalar_t__ MCACHE_FREE_PATTERN ;
 int embutl ;
 int mbutl ;
 int mcache_dump_mca (TYPE_1__*) ;
 int mclverify ;
 int panic (char*,int ,void*,int ,int ,int ) ;

__attribute__((used)) static void
mcl_audit_verify_nextptr(void *next, mcache_audit_t *mca)
{
 if (next != ((void*)0) && !MBUF_IN_MAP(next) &&
     (next != (void *)MCACHE_FREE_PATTERN || !mclverify)) {
  panic("mcl_audit: buffer %p modified after free at offset 0: "
      "%p out of range [%p-%p)\n%s\n",
      mca->mca_addr, next, mbutl, embutl, mcache_dump_mca(mca));

 }
}
