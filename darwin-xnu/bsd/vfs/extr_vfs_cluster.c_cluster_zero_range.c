
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_page_info_t ;
typedef int off_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int IO_NOZERODIRTY ;
 int IO_NOZEROVALID ;
 int PAGE_MASK_64 ;
 scalar_t__ PAGE_SIZE ;
 int PAGE_SIZE_64 ;
 scalar_t__ TRUE ;
 int cluster_zero (int ,int,int,int *) ;
 int min (int,scalar_t__) ;
 scalar_t__ upl_valid_page (int *,int) ;

__attribute__((used)) static int
cluster_zero_range(upl_t upl, upl_page_info_t *pl, int flags, int io_offset, off_t zero_off, off_t upl_f_offset, int bytes_to_zero)
{
 int zero_pg_index;
 boolean_t need_cluster_zero = TRUE;

        if ((flags & (IO_NOZEROVALID | IO_NOZERODIRTY))) {

         bytes_to_zero = min(bytes_to_zero, PAGE_SIZE - (int)(zero_off & PAGE_MASK_64));
  zero_pg_index = (int)((zero_off - upl_f_offset) / PAGE_SIZE_64);

  if (upl_valid_page(pl, zero_pg_index)) {




   need_cluster_zero = FALSE;
  }
 }
 if (need_cluster_zero == TRUE)
  cluster_zero(upl, io_offset, bytes_to_zero, ((void*)0));

 return (bytes_to_zero);
}
