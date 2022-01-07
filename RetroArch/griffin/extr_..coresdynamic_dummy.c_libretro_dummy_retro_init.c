
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int menu_rgui_aspect_ratio; } ;
struct TYPE_5__ {int menu_driver; } ;
struct TYPE_7__ {TYPE_2__ uints; TYPE_1__ arrays; } ;
typedef TYPE_3__ settings_t ;






 scalar_t__ calloc (int,int) ;
 TYPE_3__* config_get_ptr () ;
 int* dummy_frame_buf ;
 int frame_buf_height ;
 int frame_buf_width ;
 scalar_t__ string_is_equal (int ,char*) ;

void libretro_dummy_retro_init(void)
{



   unsigned i;


   frame_buf_width = 320;
   frame_buf_height = 240;
   dummy_frame_buf = (uint16_t*)calloc(frame_buf_width * frame_buf_height, sizeof(uint16_t));
   for (i = 0; i < (unsigned)(frame_buf_width * frame_buf_height); i++)
      dummy_frame_buf[i] = 4 << 5;
}
