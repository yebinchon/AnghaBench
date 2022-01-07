
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_4__ {int width; int height; } ;



void
preview_set_size(signal_user_data_t *ud, int width, int height)
{
    ud->preview->width = width;
    ud->preview->height = height;
}
