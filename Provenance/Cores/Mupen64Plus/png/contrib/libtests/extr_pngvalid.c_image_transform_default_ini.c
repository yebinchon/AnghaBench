
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int transform_display ;
struct TYPE_4__ {TYPE_2__* next; } ;
typedef TYPE_1__ image_transform ;
struct TYPE_5__ {int (* ini ) (TYPE_2__*,int *) ;} ;


 int stub1 (TYPE_2__*,int *) ;

void
image_transform_default_ini(const image_transform *this,
    transform_display *that)
{
   this->next->ini(this->next, that);
}
