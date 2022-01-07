
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int vm_object_offset_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ pager_ready; int terminating; scalar_t__ alive; scalar_t__ internal; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ VM_COMPRESSOR_PAGER_STATE_GET (TYPE_1__*,int ) ;
 scalar_t__ VM_EXTERNAL_STATE_EXISTS ;

__attribute__((used)) static boolean_t
page_is_paged_out(
 vm_object_t object,
 vm_object_offset_t offset)
{
 if (object->internal &&
    object->alive &&
    !object->terminating &&
    object->pager_ready) {

  if (VM_COMPRESSOR_PAGER_STATE_GET(object, offset)
      == VM_EXTERNAL_STATE_EXISTS) {
   return TRUE;
  }
 }
 return FALSE;
}
