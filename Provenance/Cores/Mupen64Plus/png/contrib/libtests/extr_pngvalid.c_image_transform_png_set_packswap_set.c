
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int littleendian; } ;
struct TYPE_9__ {TYPE_1__ this; } ;
typedef TYPE_2__ transform_display ;
typedef int png_structp ;
typedef int png_infop ;
struct TYPE_10__ {TYPE_4__* next; } ;
typedef TYPE_3__ image_transform ;
struct TYPE_11__ {int (* set ) (TYPE_4__*,TYPE_2__*,int ,int ) ;} ;


 int png_set_packswap (int ) ;
 int stub1 (TYPE_4__*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
image_transform_png_set_packswap_set(const image_transform *this,
    transform_display *that, png_structp pp, png_infop pi)
{
   png_set_packswap(pp);
   that->this.littleendian = 1;
   this->next->set(this->next, that, pp, pi);
}
