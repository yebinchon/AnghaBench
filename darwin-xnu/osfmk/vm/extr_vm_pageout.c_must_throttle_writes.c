
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int AVAILABLE_NON_COMPRESSED_MEMORY ;
 int FALSE ;
 int TRUE ;
 scalar_t__ VM_PAGE_Q_BACKING_UP (int *) ;
 int vm_page_pageable_external_count ;
 int vm_pageout_queue_external ;

boolean_t
must_throttle_writes()
{
 if (VM_PAGE_Q_BACKING_UP(&vm_pageout_queue_external) &&
     vm_page_pageable_external_count > (AVAILABLE_NON_COMPRESSED_MEMORY * 6) / 10)
  return (TRUE);

 return (FALSE);
}
