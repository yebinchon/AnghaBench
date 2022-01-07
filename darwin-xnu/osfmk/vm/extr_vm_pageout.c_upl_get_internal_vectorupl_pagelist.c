
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vector_upl_t ;
typedef TYPE_2__* upl_t ;
typedef int upl_page_info_t ;
struct TYPE_5__ {scalar_t__ vector_upl; } ;
struct TYPE_4__ {int * pagelist; } ;



upl_page_info_t *
upl_get_internal_vectorupl_pagelist(upl_t upl)
{
 return ((vector_upl_t)(upl->vector_upl))->pagelist;
}
