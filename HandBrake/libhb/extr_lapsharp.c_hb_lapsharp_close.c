
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_filter_private_t ;
struct TYPE_3__ {int * private_data; } ;
typedef TYPE_1__ hb_filter_object_t ;


 int free (int *) ;

__attribute__((used)) static void hb_lapsharp_close(hb_filter_object_t * filter)
{
    hb_filter_private_t *pv = filter->private_data;

    if (pv == ((void*)0))
    {
        return;
    }

    free(pv);
    filter->private_data = ((void*)0);
}
