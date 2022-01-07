
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int transform_display ;
typedef int png_structp ;
typedef int png_infop ;
struct TYPE_4__ {TYPE_2__* next; } ;
typedef TYPE_1__ image_transform ;
struct TYPE_5__ {int (* set ) (TYPE_2__*,int *,int ,int ) ;} ;


 int png_set_bgr (int ) ;
 int stub1 (TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static void
image_transform_png_set_bgr_set(const image_transform *this,
    transform_display *that, png_structp pp, png_infop pi)
{
   png_set_bgr(pp);
   this->next->set(this->next, that, pp, pi);
}
