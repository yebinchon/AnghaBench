
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dr7; scalar_t__ dr0; scalar_t__ dr1; scalar_t__ dr2; scalar_t__ dr3; } ;
typedef TYPE_1__ x86_debug_state64_t ;
typedef int uint32_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ VM_MAX_PAGE_ADDRESS ;
 int dr7d_is_valid (int *) ;

boolean_t
debug_state_is_valid64(x86_debug_state64_t *ds)
{
 if (!dr7d_is_valid((uint32_t *)&ds->dr7))
  return FALSE;





 if (ds->dr7 & 0x1)
  if (ds->dr0 >= VM_MAX_PAGE_ADDRESS)
   return FALSE;

 if (ds->dr7 & (0x1<<2))
  if (ds->dr1 >= VM_MAX_PAGE_ADDRESS)
   return FALSE;

 if (ds->dr7 & (0x1<<4))
  if (ds->dr2 >= VM_MAX_PAGE_ADDRESS)
   return FALSE;

 if (ds->dr7 & (0x1<<6))
  if (ds->dr3 >= VM_MAX_PAGE_ADDRESS)
   return FALSE;


 ds->dr7 &= 0xffffffffULL;

 return TRUE;
}
