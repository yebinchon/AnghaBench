
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
typedef int upl_size_t ;
struct TYPE_3__ {int size; } ;



upl_size_t upl_get_size(
        upl_t upl)
{
        return upl->size;
}
