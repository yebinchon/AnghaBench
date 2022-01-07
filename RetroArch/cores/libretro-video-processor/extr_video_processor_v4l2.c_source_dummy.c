
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ field; } ;


 int M_PI ;
 scalar_t__ V4L2_FIELD_BOTTOM ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_FIELD_TOP ;
 int clamp_float (float,int,int) ;
 float dummy_pos ;
 int* frame_cap ;
 int sinf (float) ;
 TYPE_1__ video_buf ;
 int video_half_feed_rate ;

void source_dummy(int width, int height) {
   int i, triangpos, triangpos_t=0, triangpos_b=0, offset=0;
   bool field_ahead = 0;
   uint8_t *src = frame_cap;
   float step = M_PI/64;

   if (video_buf.field == V4L2_FIELD_TOP) {
      offset=0;
   } else if (video_buf.field == V4L2_FIELD_BOTTOM) {
      offset=1;
   }

   dummy_pos += step;


   triangpos = (sinf(dummy_pos)+1)/2*width;
   if (video_buf.field == V4L2_FIELD_INTERLACED) {
      if (video_half_feed_rate == 0)
          video_half_feed_rate = 1;
      triangpos_t = (sinf(dummy_pos)+1)/2*width;
      dummy_pos += step;
      triangpos_b = (sinf(dummy_pos)+1)/2*width;
   }

   for (i = 0; i < width * height; i+=1, src+=3) {
      float color = (clamp_float((float)(triangpos - (i%width) + offset)/10, -1, 1)+1)/2;
      src[0] = 0x10 + color*0xE0;
      src[1] = 0x10 + color*0xE0;
      src[2] = 0x10 + color*0xE0;


      if ( ((i+1) % width) == 0 ) {
         triangpos -= 2;
         triangpos_t -= 1;
         triangpos_b -= 1;
         if (video_buf.field == V4L2_FIELD_INTERLACED) {
            if (field_ahead) {
               triangpos = triangpos_b;
               field_ahead = 0;
            } else {
               triangpos = triangpos_t;
               field_ahead = 1;
            }
         }
      }
   }

   if(video_buf.field == V4L2_FIELD_TOP)
      video_buf.field = V4L2_FIELD_BOTTOM;
   else if (video_buf.field == V4L2_FIELD_BOTTOM)
      video_buf.field = V4L2_FIELD_TOP;
}
