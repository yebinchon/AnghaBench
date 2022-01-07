
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sbit; } ;
typedef TYPE_2__ sbit_modification ;
struct TYPE_5__ {int pread; } ;
struct TYPE_7__ {scalar_t__ bit_depth; int colour_type; scalar_t__ buffer_position; scalar_t__ buffer_count; scalar_t__* buffer; TYPE_1__ this; } ;
typedef TYPE_3__ png_modifier ;
typedef int png_modification ;
typedef scalar_t__ png_byte ;


 int CHUNK_sBIT ;
 int png_error (int ,char*) ;
 int png_save_uint_32 (scalar_t__*,int) ;

__attribute__((used)) static int
sbit_modify(png_modifier *pm, png_modification *me, int add)
{
   png_byte sbit = ((sbit_modification*)me)->sbit;
   if (pm->bit_depth > sbit)
   {
      int cb = 0;
      switch (pm->colour_type)
      {
         case 0:
            cb = 1;
            break;

         case 2:
         case 3:
            cb = 3;
            break;

         case 4:
            cb = 2;
            break;

         case 6:
            cb = 4;
            break;

         default:
            png_error(pm->this.pread,
               "unexpected colour type in sBIT modification");
      }

      png_save_uint_32(pm->buffer, cb);
      png_save_uint_32(pm->buffer+4, CHUNK_sBIT);

      while (cb > 0)
         (pm->buffer+8)[--cb] = sbit;

      return 1;
   }
   else if (!add)
   {

      pm->buffer_count = pm->buffer_position = 0;
      return 1;
   }
   else
      return 0;
}
