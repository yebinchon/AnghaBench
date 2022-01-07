
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef enum PixelFormat { ____Placeholder_PixelFormat } PixelFormat ;
struct TYPE_2__ {scalar_t__ encoding; int pixfmt; } ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 TYPE_1__* pixfmt_to_encoding_table ;

__attribute__((used)) static uint32_t pixfmt_to_encoding(enum PixelFormat pixfmt)
{
   unsigned int i;
   for(i = 0; pixfmt_to_encoding_table[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(pixfmt_to_encoding_table[i].pixfmt == pixfmt) break;
   return pixfmt_to_encoding_table[i].encoding;
}
