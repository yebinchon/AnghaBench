
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bt_bdaddr_t ;


 int assert (int ) ;
 scalar_t__ memcmp (int const*,int **,int) ;

bool bdaddr_is_empty(const bt_bdaddr_t *addr)
{
    assert(addr != ((void*)0));

    uint8_t zero[sizeof(bt_bdaddr_t)] = { 0 };
    return memcmp(addr, &zero, sizeof(bt_bdaddr_t)) == 0;
}
