
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int hibernate_page_list_t ;
struct TYPE_3__ {scalar_t__ efiRuntimeServicesPageCount; scalar_t__ efiRuntimeServicesPageStart; } ;
typedef TYPE_1__ boot_args ;
struct TYPE_4__ {scalar_t__ bootArgs; } ;


 TYPE_2__ PE_state ;
 int hibernate_set_page_state (int *,int *,scalar_t__,scalar_t__,int ) ;
 int kIOHibernatePageStateFree ;

void
hibernate_page_list_set_volatile( hibernate_page_list_t * page_list,
      hibernate_page_list_t * page_list_wired,
      uint32_t * pagesOut)
{
    boot_args * args = (boot_args *) PE_state.bootArgs;

    if (args->efiRuntimeServicesPageStart)
    {
 hibernate_set_page_state(page_list, page_list_wired,
      args->efiRuntimeServicesPageStart, args->efiRuntimeServicesPageCount,
      kIOHibernatePageStateFree);
 *pagesOut -= args->efiRuntimeServicesPageCount;
    }
}
