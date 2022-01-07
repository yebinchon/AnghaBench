
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int filler; } ;
struct TYPE_10__ {TYPE_1__ this; } ;
typedef TYPE_2__ transform_display ;
typedef int png_structp ;
typedef int png_infop ;
struct TYPE_11__ {TYPE_4__* next; } ;
typedef TYPE_3__ image_transform ;
struct TYPE_13__ {int flags; int filler; } ;
struct TYPE_12__ {int (* set ) (TYPE_4__*,TYPE_2__*,int ,int ) ;} ;


 TYPE_8__ data ;
 int png_set_filler (int ,int ,int ) ;
 int random_choice () ;
 int random_u32 () ;
 int stub1 (TYPE_4__*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
image_transform_png_set_filler_set(const image_transform *this,
    transform_display *that, png_structp pp, png_infop pi)
{




   data.filler = random_u32();
   data.flags = random_choice();

   png_set_filler(pp, data.filler, data.flags);




   that->this.filler = 1;

   this->next->set(this->next, that, pp, pi);
}
