#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int timediff_t ;
struct curltime {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int TIMEDIFF_T_MAX ; 
 int TIMEDIFF_T_MIN ; 

timediff_t FUNC0(struct curltime newer, struct curltime older)
{
  timediff_t diff = (timediff_t)newer.tv_sec-older.tv_sec;
  if(diff >= (TIMEDIFF_T_MAX/1000000))
    return TIMEDIFF_T_MAX;
  else if(diff <= (TIMEDIFF_T_MIN/1000000))
    return TIMEDIFF_T_MIN;
  return diff * 1000000 + newer.tv_usec-older.tv_usec;
}