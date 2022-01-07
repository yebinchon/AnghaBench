
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {unsigned int bit_depth; } ;
struct TYPE_11__ {TYPE_1__ this; } ;
typedef TYPE_2__ transform_display ;
typedef int png_structp ;
typedef int png_infop ;
typedef void* png_byte ;
struct TYPE_12__ {TYPE_4__* next; } ;
typedef TYPE_3__ image_transform ;
struct TYPE_14__ {void* alpha; void* gray; void* blue; void* green; void* red; } ;
struct TYPE_13__ {int (* set ) (TYPE_4__*,TYPE_2__*,int ,int ) ;} ;


 TYPE_6__ data ;
 int png_set_shift (int ,TYPE_6__*) ;
 scalar_t__ random_mod (unsigned int const) ;
 int stub1 (TYPE_4__*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
image_transform_png_set_shift_set(const image_transform *this,
    transform_display *that, png_structp pp, png_infop pi)
{






   const unsigned int depth = that->this.bit_depth;

   data.red = (png_byte) (random_mod(depth)+1);
   data.green = (png_byte) (random_mod(depth)+1);
   data.blue = (png_byte) (random_mod(depth)+1);
   data.gray = (png_byte) (random_mod(depth)+1);
   data.alpha = (png_byte) (random_mod(depth)+1);

   png_set_shift(pp, &data);
   this->next->set(this->next, that, pp, pi);
}
