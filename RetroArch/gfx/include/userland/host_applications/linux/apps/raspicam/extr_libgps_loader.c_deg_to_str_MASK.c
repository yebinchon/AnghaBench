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

/* Variables and functions */
 double FUNC0 (double,double*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int,int) ; 

int FUNC2(double f, char *buf, int buf_size)
{
   double fsec, fdeg, fmin;

   if (buf_size <= 0)
      return -1;
   *buf = 0;
   if (f < 0 || f > 360)
      return -1;

   fmin = FUNC0(f, &fdeg);
   fsec = FUNC0(fmin * 60, &fmin);
   fsec *= 60;
   FUNC1(buf, buf_size, "%03d/1,%02d/1,%05d/1000", (int)fdeg, (int)fmin, (int)(fsec*1000));

   return 0;
}