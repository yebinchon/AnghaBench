
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
typedef int upl_page_info_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_5__ {int size; } ;


 int KERN_INVALID_ARGUMENT ;
 TYPE_1__* UPL_NULL ;
 int upl_commit_range (TYPE_1__*,int ,int ,int ,int *,int ,int *) ;

kern_return_t
upl_commit(
 upl_t upl,
 upl_page_info_t *page_list,
 mach_msg_type_number_t count)
{
 boolean_t empty;

 if (upl == UPL_NULL)
  return KERN_INVALID_ARGUMENT;

 return upl_commit_range(upl, 0, upl->size, 0, page_list, count, &empty);
}
