
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_bdaddr_t ;


 int assert (int ) ;
 scalar_t__ memcmp (int const*,int const*,int) ;

bool bdaddr_equals(const bt_bdaddr_t *first, const bt_bdaddr_t *second)
{
    assert(first != ((void*)0));
    assert(second != ((void*)0));

    return memcmp(first, second, sizeof(bt_bdaddr_t)) == 0;
}
