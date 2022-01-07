
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int memory_object_t ;
typedef int memory_object_control_t ;
typedef int kern_return_t ;
typedef TYPE_2__* compressor_pager_t ;
struct TYPE_6__ {int mo_control; } ;
struct TYPE_7__ {TYPE_1__ cpgr_hdr; } ;


 int KERN_SUCCESS ;
 int MEMORY_OBJECT_CONTROL_NULL ;
 int compressor_pager_lock (TYPE_2__*) ;
 int compressor_pager_lookup (int ,TYPE_2__*) ;
 int compressor_pager_unlock (TYPE_2__*) ;
 int memory_object_control_deallocate (int ) ;

kern_return_t
compressor_memory_object_terminate(
 memory_object_t mem_obj)
{
 memory_object_control_t control;
 compressor_pager_t pager;





 compressor_pager_lookup(mem_obj, pager);
 compressor_pager_lock(pager);
 control = pager->cpgr_hdr.mo_control;
 pager->cpgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;

 compressor_pager_unlock(pager);




 memory_object_control_deallocate(control);
 return KERN_SUCCESS;
}
