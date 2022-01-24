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
typedef  int /*<<< orphan*/  ucvector ;
struct TYPE_3__ {int year; unsigned char month; unsigned char day; unsigned char hour; unsigned char minute; unsigned char second; } ;
typedef  TYPE_1__ LodePNGTime ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static unsigned FUNC3(ucvector* out, const LodePNGTime* time)
{
  unsigned error = 0;
  unsigned char* data = (unsigned char*)FUNC2(7);
  if(!data) return 83; /*alloc fail*/
  data[0] = (unsigned char)(time->year / 256);
  data[1] = (unsigned char)(time->year % 256);
  data[2] = time->month;
  data[3] = time->day;
  data[4] = time->hour;
  data[5] = time->minute;
  data[6] = time->second;
  error = FUNC0(out, "tIME", data, 7);
  FUNC1(data);
  return error;
}