
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_bdaddr_t ;


 int bdaddr_equals (int *,int *) ;

__attribute__((used)) static bool bdaddr_equality_fn(const void *x, const void *y)
{
    return bdaddr_equals((bt_bdaddr_t *)x, (bt_bdaddr_t *)y);
}
