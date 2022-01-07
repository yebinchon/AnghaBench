
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;


 int FALSE ;
 int PAGE_REPLACEMENT_ALLOWED (int ) ;
 int TRUE ;
 int decompressions_blocked ;
 int thread_wakeup (int ) ;

void
vm_decompressor_unlock(void)
{
 PAGE_REPLACEMENT_ALLOWED(TRUE);

 decompressions_blocked = FALSE;

 PAGE_REPLACEMENT_ALLOWED(FALSE);

 thread_wakeup((event_t)&decompressions_blocked);
}
