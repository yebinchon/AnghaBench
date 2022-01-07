
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_6__ {int performanceDataSize; int performanceDataStart; int efiRuntimeServicesVirtualPageStart; int efiRuntimeServicesPageCount; int efiRuntimeServicesPageStart; } ;
typedef TYPE_1__ boot_args ;
struct TYPE_9__ {scalar_t__ bootArgs; } ;
struct TYPE_8__ {int cpu_hibernate; } ;
struct TYPE_7__ {int performanceDataSize; int performanceDataStart; int runtimeVirtualPages; int runtimePageCount; int runtimePages; scalar_t__ processorFlags; } ;
typedef TYPE_2__ IOHibernateImageHeader ;


 int KERN_SUCCESS ;
 TYPE_5__ PE_state ;
 TYPE_4__* cpu_datap (int ) ;

kern_return_t
hibernate_processor_setup(IOHibernateImageHeader * header)
{
    boot_args * args = (boot_args *) PE_state.bootArgs;

    cpu_datap(0)->cpu_hibernate = 1;
    header->processorFlags = 0;

    header->runtimePages = args->efiRuntimeServicesPageStart;
    header->runtimePageCount = args->efiRuntimeServicesPageCount;
    header->runtimeVirtualPages = args->efiRuntimeServicesVirtualPageStart;
    header->performanceDataStart = args->performanceDataStart;
    header->performanceDataSize = args->performanceDataSize;

    return (KERN_SUCCESS);
}
