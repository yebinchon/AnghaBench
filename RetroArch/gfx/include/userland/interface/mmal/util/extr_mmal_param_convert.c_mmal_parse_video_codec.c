
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {char* member_0; int member_1; } ;
typedef TYPE_1__ string_pair_t ;
typedef int MMAL_STATUS_T ;
 int parse_enum (int*,TYPE_1__*,int ,char const*) ;
 int vcos_countof (TYPE_1__*) ;

MMAL_STATUS_T mmal_parse_video_codec(uint32_t *dest, const char *str)
{
   static string_pair_t video_codec_enums[] = {
      { "h264", 133 },
      { "h263", 134 },
      { "mpeg4", 131 },
      { "mpeg2", 132 },
      { "vp8", 128 },
      { "vp7", 129 },
      { "vp6", 130 },
   };
   int i = 0;
   MMAL_STATUS_T ret;

   ret = parse_enum(&i, video_codec_enums, vcos_countof(video_codec_enums), str);
   *dest = i;
   return ret;
}
