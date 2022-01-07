
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
typedef int ppnum_t ;
struct TYPE_3__ {int highest_page; } ;



ppnum_t upl_get_highest_page(
        upl_t upl)
{
        return upl->highest_page;
}
