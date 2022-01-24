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
 int MAX ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int FUNC2 (char*,char*,double*) ; 
 int /*<<< orphan*/  stdin ; 

FUNC3()
{
 char buf[256];
 int count=0;

 while(FUNC0(buf,256,stdin)>0)
 {
  double p;

  if(FUNC2(buf,"%lf",&p)==1)
  {
   p*=65536*16;
   FUNC1("%ld,\n",(long)p);
   count++;
   if(count==MAX) break;
  }

 }

}