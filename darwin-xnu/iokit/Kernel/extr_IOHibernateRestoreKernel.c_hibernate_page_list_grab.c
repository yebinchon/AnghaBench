
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ ppnum_t ;
typedef int hibernate_page_list_t ;
struct TYPE_4__ {scalar_t__ last_page; } ;
typedef TYPE_1__ hibernate_bitmap_t ;


 int FALSE ;
 int debug_code (int ,scalar_t__) ;
 int fatal () ;
 scalar_t__ hibernate_page_bitmap_count (TYPE_1__*,int ,scalar_t__) ;
 TYPE_1__* hibernate_page_bitmap_pin (int *,scalar_t__*) ;
 int kIOHibernateRestoreCodeNoMemory ;

__attribute__((used)) static ppnum_t
hibernate_page_list_grab(hibernate_page_list_t * list, uint32_t * pNextFree)
{
    uint32_t nextFree = *pNextFree;
    uint32_t nextFreeInBank;
    hibernate_bitmap_t * bitmap;

    nextFreeInBank = nextFree + 1;
    while ((bitmap = hibernate_page_bitmap_pin(list, &nextFreeInBank)))
    {
 nextFreeInBank += hibernate_page_bitmap_count(bitmap, FALSE, nextFreeInBank);
 if (nextFreeInBank <= bitmap->last_page)
 {
     *pNextFree = nextFreeInBank;
     break;
 }
    }

    if (!bitmap)
    {
 debug_code(kIOHibernateRestoreCodeNoMemory, nextFree);
 fatal();
 nextFree = 0;
    }

    return (nextFree);
}
