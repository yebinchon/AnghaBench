
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int max_gamma_8; } ;
typedef TYPE_1__ transform_display ;
typedef int png_structp ;
typedef int png_infop ;
struct TYPE_8__ {TYPE_3__* next; } ;
typedef TYPE_2__ image_transform ;
struct TYPE_9__ {int (* set ) (TYPE_3__*,TYPE_1__*,int ,int ) ;} ;


 int PNG_MAX_GAMMA_8 ;
 int png_set_strip_16 (int ) ;
 int stub1 (TYPE_3__*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
image_transform_png_set_strip_16_set(const image_transform *this,
    transform_display *that, png_structp pp, png_infop pi)
{
   png_set_strip_16(pp);


      that->max_gamma_8 = PNG_MAX_GAMMA_8;

   this->next->set(this->next, that, pp, pi);
}
