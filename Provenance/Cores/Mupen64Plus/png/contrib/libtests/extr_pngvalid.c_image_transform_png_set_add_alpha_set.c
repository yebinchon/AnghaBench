
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int transform_display ;
typedef int png_structp ;
typedef int png_infop ;
struct TYPE_5__ {TYPE_2__* next; } ;
typedef TYPE_1__ image_transform ;
struct TYPE_7__ {int flags; int filler; } ;
struct TYPE_6__ {int (* set ) (TYPE_2__*,int *,int ,int ) ;} ;


 TYPE_4__ data ;
 int png_set_add_alpha (int ,int ,int ) ;
 int random_choice () ;
 int random_u32 () ;
 int stub1 (TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static void
image_transform_png_set_add_alpha_set(const image_transform *this,
    transform_display *that, png_structp pp, png_infop pi)
{




   data.filler = random_u32();
   data.flags = random_choice();

   png_set_add_alpha(pp, data.filler, data.flags);
   this->next->set(this->next, that, pp, pi);
}
