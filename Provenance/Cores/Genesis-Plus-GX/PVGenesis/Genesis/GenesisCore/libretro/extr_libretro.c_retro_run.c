
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; scalar_t__ h; scalar_t__ w; } ;
struct TYPE_4__ {int pitch; TYPE_1__ viewport; int data; } ;


 int SYSTEM_MCD ;
 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 int audio_batch_cb (int ,int) ;
 int audio_update (int ) ;
 TYPE_2__ bitmap ;
 int soundbuffer ;
 int system_frame_gen (int ) ;
 int system_frame_scd (int ) ;
 int system_frame_sms (int ) ;
 int system_hw ;
 int video_cb (int ,scalar_t__,scalar_t__,int ) ;

void retro_run(void)
{
   int aud;

   if (system_hw == SYSTEM_MCD)
      system_frame_scd(0);
   else if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
      system_frame_gen(0);
   else
      system_frame_sms(0);

   video_cb(bitmap.data, bitmap.viewport.w + (bitmap.viewport.x * 2), bitmap.viewport.h + (bitmap.viewport.y * 2), bitmap.pitch);

   aud = audio_update(soundbuffer) << 1;
   audio_batch_cb(soundbuffer, aud >> 1);
}
