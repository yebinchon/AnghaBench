
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_7__ {int list_size; } ;
typedef TYPE_1__ hibernate_page_list_t ;


 int FALSE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int TRUE ;
 TYPE_1__* hibernate_page_list_allocate (int ) ;
 int kfree (TYPE_1__*,int ) ;

kern_return_t
hibernate_alloc_page_lists(
  hibernate_page_list_t ** page_list_ret,
  hibernate_page_list_t ** page_list_wired_ret,
  hibernate_page_list_t ** page_list_pal_ret)
{
    kern_return_t retval = KERN_SUCCESS;

    hibernate_page_list_t * page_list = ((void*)0);
    hibernate_page_list_t * page_list_wired = ((void*)0);
    hibernate_page_list_t * page_list_pal = ((void*)0);

    page_list = hibernate_page_list_allocate(TRUE);
    if (!page_list) {

     retval = KERN_RESOURCE_SHORTAGE;
     goto done;
    }
    page_list_wired = hibernate_page_list_allocate(FALSE);
    if (!page_list_wired)
    {
     kfree(page_list, page_list->list_size);

     retval = KERN_RESOURCE_SHORTAGE;
     goto done;
    }
    page_list_pal = hibernate_page_list_allocate(FALSE);
    if (!page_list_pal)
    {
     kfree(page_list, page_list->list_size);
     kfree(page_list_wired, page_list_wired->list_size);

     retval = KERN_RESOURCE_SHORTAGE;
     goto done;
    }
    *page_list_ret = page_list;
    *page_list_wired_ret = page_list_wired;
    *page_list_pal_ret = page_list_pal;

done:
    return (retval);

}
