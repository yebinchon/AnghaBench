
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct secpolicyaddrrange {int end; int start; } ;


 int key_sockaddrcmp (struct sockaddr*,struct sockaddr*,int) ;

__attribute__((used)) static int
key_is_addr_in_range(struct sockaddr_storage *addr, struct secpolicyaddrrange *addr_range)
{
    int cmp = 0;

    if (addr == ((void*)0) || addr_range == ((void*)0))
        return 0;


    cmp = key_sockaddrcmp((struct sockaddr *)addr, (struct sockaddr *)&addr_range->start, 1);
    if (cmp != 0 && cmp != 1)
        return 0;


    cmp = key_sockaddrcmp((struct sockaddr *)addr, (struct sockaddr *)&addr_range->end, 1);
    if (cmp != 0 && cmp != -1)
        return 0;

    return 1;
}
