#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_structrp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  TYPE_1__* png_const_timep ;
typedef  int png_byte ;
struct TYPE_3__ {int month; int day; int hour; int second; int minute; int /*<<< orphan*/  year; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  png_tIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC4(png_structrp png_ptr, png_const_timep mod_time)
{
   png_byte buf[7];

   FUNC0(1, "in png_write_tIME");

   if (mod_time->month  > 12 || mod_time->month  < 1 ||
       mod_time->day    > 31 || mod_time->day    < 1 ||
       mod_time->hour   > 23 || mod_time->second > 60)
   {
      FUNC2(png_ptr, "Invalid time specified for tIME chunk");
      return;
   }

   FUNC1(buf, mod_time->year);
   buf[2] = mod_time->month;
   buf[3] = mod_time->day;
   buf[4] = mod_time->hour;
   buf[5] = mod_time->minute;
   buf[6] = mod_time->second;

   FUNC3(png_ptr, png_tIME, buf, (png_size_t)7);
}