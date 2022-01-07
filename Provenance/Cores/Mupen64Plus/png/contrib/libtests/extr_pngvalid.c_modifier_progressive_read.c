
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef scalar_t__ png_structp ;
typedef int png_size_t ;
struct TYPE_8__ {scalar_t__ pread; scalar_t__ readpos; TYPE_1__* current; int * next; } ;
struct TYPE_7__ {scalar_t__ buffer_count; scalar_t__ buffer_position; TYPE_3__ this; } ;
typedef TYPE_2__ png_modifier ;
typedef int png_infop ;
typedef int png_byte ;
struct TYPE_6__ {scalar_t__ datacount; int data; } ;


 int modifier_read_imp (TYPE_2__*,int *,int) ;
 int png_error (scalar_t__,char*) ;
 int png_process_data (scalar_t__,int ,int *,int) ;
 int store_read_buffer_avail (TYPE_3__*) ;

__attribute__((used)) static void
modifier_progressive_read(png_modifier *pm, png_structp pp, png_infop pi)
{
   if (pm->this.pread != pp || pm->this.current == ((void*)0) ||
       pm->this.next == ((void*)0))
      png_error(pp, "store state damaged (progressive)");







   for (;;)
   {
      static png_uint_32 noise = 1;
      png_size_t cb, cbAvail;
      png_byte buffer[512];


      noise = (noise << 9) | ((noise ^ (noise >> (9-5))) & 0x1ff);
      cb = noise & 0x1ff;






      cbAvail = store_read_buffer_avail(&pm->this);
      if (pm->buffer_count > pm->buffer_position)
         cbAvail += pm->buffer_count - pm->buffer_position;

      if (cb > cbAvail)
      {

         if (cbAvail == 0)
            break;

         cb = cbAvail;
      }

      modifier_read_imp(pm, buffer, cb);
      png_process_data(pp, pi, buffer, cb);
   }




   if (pm->buffer_count > pm->buffer_position ||
       pm->this.next != &pm->this.current->data ||
       pm->this.readpos < pm->this.current->datacount)
      png_error(pp, "progressive read implementation error");
}
