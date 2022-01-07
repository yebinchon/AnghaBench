
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int hibernate_page_list_t ;
struct TYPE_3__ {int* bitmap; scalar_t__ first_page; } ;
typedef TYPE_1__ hibernate_bitmap_t ;
typedef int boolean_t ;


 int TRUE ;
 TYPE_1__* hibernate_page_bitmap (int *,int) ;

boolean_t
hibernate_page_bittst(hibernate_page_list_t * list, uint32_t page)
{
    boolean_t result = TRUE;
    hibernate_bitmap_t * bitmap;

    bitmap = hibernate_page_bitmap(list, page);
    if (bitmap)
    {
 page -= bitmap->first_page;
 result = (0 != (bitmap->bitmap[page >> 5] & (0x80000000 >> (page & 31))));
    }
    return (result);
}
