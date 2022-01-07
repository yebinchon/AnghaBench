
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;


 int list_clear (int *) ;
 int osi_free (int *) ;

void list_free(list_t *list)
{
    if (!list) {
        return;
    }

    list_clear(list);
    osi_free(list);
}
