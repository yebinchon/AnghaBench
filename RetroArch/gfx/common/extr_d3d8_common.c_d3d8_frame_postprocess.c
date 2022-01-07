
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flicker_filter_index; } ;
struct TYPE_6__ {int softfilter_enable; TYPE_1__ screen; } ;
struct TYPE_7__ {TYPE_2__ console; } ;
typedef TYPE_3__ global_t ;


 int D3DDevice_SetFlickerFilter (int ) ;
 int D3DDevice_SetSoftDisplayFilter (int ) ;
 TYPE_3__* global_get_ptr () ;

void d3d8_frame_postprocess(void *data)
{





}
