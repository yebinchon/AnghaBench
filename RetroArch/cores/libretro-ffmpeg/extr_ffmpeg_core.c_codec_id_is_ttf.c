
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;





__attribute__((used)) static bool codec_id_is_ttf(enum AVCodecID id)
{
   switch (id)
   {



      case 129:

         return 1;

      default:
         break;
   }

   return 0;
}
