
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
struct upl_io_completion {int dummy; } ;
struct TYPE_3__ {struct upl_io_completion* upl_iodone; } ;



void upl_set_iodone(upl_t upl, void *upl_iodone)
{
        upl->upl_iodone = (struct upl_io_completion *)upl_iodone;
}
