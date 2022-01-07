
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;
typedef int list_free_cb ;


 int * list_new_internal (int ) ;

list_t *list_new(list_free_cb callback)
{
    return list_new_internal(callback);
}
