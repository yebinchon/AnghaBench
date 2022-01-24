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
 int* bitss ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

void FUNC1(int src, int dest, char *wt)
{
 if((src^dest)&1) /* signed/unsigned change. */
  if(src&1)	/* Source unsigned, dest signed. */
  {
   if(src==1) FUNC0(" tmp%s-=128;\n",wt);
   else if(src==3) FUNC0(" tmp%s-=32768;\n",wt);
   else if(src==5) FUNC0(" tmp%s-=32768;\n",wt);
   else if(src==7) FUNC0(" tmp%s-=(1<<23);\n",wt);
  }
  else		/* Source signed, dest unsigned */
  {
   if(src==0) FUNC0(" tmp%s+=128;\n",wt);
   else if(src==2) FUNC0(" tmp%s+=32768;\n",wt);
   else if(src==4) FUNC0(" tmp%s+=32768;\n",wt);
   else if(src==6) FUNC0(" tmp%s+=(1<<23);\n",wt);
  }
 if((src>>1) != (dest>>1))
 {
  int shifty=bitss[src]-bitss[dest];
  if(shifty>0)
   FUNC0(" tmp%s >>= %d;\n",wt,shifty);
  else
   FUNC0(" tmp%s <<= %d;\n",wt,-shifty);
 }
}