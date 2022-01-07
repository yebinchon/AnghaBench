
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrlist_t ;


 int bzero (int *,int) ;

__attribute__((used)) static void
ptrlist_init(ptrlist_t * list)
{
    bzero(list, sizeof(*list));
    return;
}
