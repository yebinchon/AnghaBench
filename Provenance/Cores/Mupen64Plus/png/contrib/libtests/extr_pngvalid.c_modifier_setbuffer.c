
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer_position; int buffer; scalar_t__ buffer_count; } ;
typedef TYPE_1__ png_modifier ;


 int modifier_crc (int ) ;
 scalar_t__ png_get_uint_32 (int ) ;

__attribute__((used)) static void
modifier_setbuffer(png_modifier *pm)
{
   modifier_crc(pm->buffer);
   pm->buffer_count = png_get_uint_32(pm->buffer)+12;
   pm->buffer_position = 0;
}
