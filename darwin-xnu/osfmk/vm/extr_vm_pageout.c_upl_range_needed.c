
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
struct TYPE_5__ {int needed; } ;
typedef TYPE_2__ upl_page_info_t ;
struct upl {int dummy; } ;
struct TYPE_4__ {int flags; int size; } ;


 int PAGE_SIZE ;
 int TRUE ;
 int UPL_INTERNAL ;

void
upl_range_needed(
 upl_t upl,
 int index,
 int count)
{
 upl_page_info_t *user_page_list;
 int size_in_pages;

 if ( !(upl->flags & UPL_INTERNAL) || count <= 0)
  return;

 size_in_pages = upl->size / PAGE_SIZE;

 user_page_list = (upl_page_info_t *) (((uintptr_t)upl) + sizeof(struct upl));

 while (count-- && index < size_in_pages)
  user_page_list[index++].needed = TRUE;
}
