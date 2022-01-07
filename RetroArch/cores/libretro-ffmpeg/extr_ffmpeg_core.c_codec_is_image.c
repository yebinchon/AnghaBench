
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;







__attribute__((used)) static bool codec_is_image(enum AVCodecID id)
{
   switch (id)
   {




      case 131:
      case 130:

         return 1;

      default:
         break;
   }

   return 0;
}
