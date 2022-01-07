
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int PAGE_REPLACEMENT_ALLOWED (int ) ;
 int TRUE ;
 int decompressions_blocked ;

void
vm_decompressor_lock(void)
{
 PAGE_REPLACEMENT_ALLOWED(TRUE);

 decompressions_blocked = TRUE;

 PAGE_REPLACEMENT_ALLOWED(FALSE);
}
