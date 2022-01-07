
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;


 int PAGE_SIZE ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_ABORT_REFERENCE ;
 int ubc_upl_abort_range (int ,int,int,int) ;

__attribute__((used)) static void
cluster_read_upl_release(upl_t upl, int start_pg, int last_pg, int take_reference)
{
 int range;
 int abort_flags = UPL_ABORT_FREE_ON_EMPTY;

 if ((range = last_pg - start_pg)) {
  if (take_reference)
   abort_flags |= UPL_ABORT_REFERENCE;

  ubc_upl_abort_range(upl, start_pg * PAGE_SIZE, range * PAGE_SIZE, abort_flags);
 }
}
