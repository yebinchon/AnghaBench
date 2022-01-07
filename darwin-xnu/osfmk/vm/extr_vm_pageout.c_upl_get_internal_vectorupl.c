
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
struct TYPE_3__ {void* vector_upl; } ;



void *
upl_get_internal_vectorupl(upl_t upl)
{
 return upl->vector_upl;
}
