
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_structrp ;
typedef int png_size_t ;
typedef TYPE_1__* png_const_timep ;
typedef int png_byte ;
struct TYPE_3__ {int month; int day; int hour; int second; int minute; int year; } ;


 int png_debug (int,char*) ;
 int png_save_uint_16 (int*,int ) ;
 int png_tIME ;
 int png_warning (int ,char*) ;
 int png_write_complete_chunk (int ,int ,int*,int ) ;

void
png_write_tIME(png_structrp png_ptr, png_const_timep mod_time)
{
   png_byte buf[7];

   png_debug(1, "in png_write_tIME");

   if (mod_time->month > 12 || mod_time->month < 1 ||
       mod_time->day > 31 || mod_time->day < 1 ||
       mod_time->hour > 23 || mod_time->second > 60)
   {
      png_warning(png_ptr, "Invalid time specified for tIME chunk");
      return;
   }

   png_save_uint_16(buf, mod_time->year);
   buf[2] = mod_time->month;
   buf[3] = mod_time->day;
   buf[4] = mod_time->hour;
   buf[5] = mod_time->minute;
   buf[6] = mod_time->second;

   png_write_complete_chunk(png_ptr, png_tIME, buf, (png_size_t)7);
}
