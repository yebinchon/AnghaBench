
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_bdaddr_t ;


 int assert (int ) ;
 scalar_t__ memcpy (int *,int const*,int) ;

bt_bdaddr_t *bdaddr_copy(bt_bdaddr_t *dest, const bt_bdaddr_t *src)
{
    assert(dest != ((void*)0));
    assert(src != ((void*)0));

    return (bt_bdaddr_t *)memcpy(dest, src, sizeof(bt_bdaddr_t));
}
