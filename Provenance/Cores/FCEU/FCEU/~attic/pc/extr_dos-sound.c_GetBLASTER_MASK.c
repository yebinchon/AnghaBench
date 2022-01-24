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
 int SBDMA ; 
 int SBDMA16 ; 
 int SBIRQ ; 
 int SBPort ; 
 scalar_t__ format ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,int*) ; 
 int FUNC3 (char) ; 

int FUNC4(void)
{
 int check=0;
 char *s;

 if(!(s=FUNC0("BLASTER")))
 {
  FUNC1(" Error getting BLASTER environment variable.");
  return(0);
 }

 while(*s)
 {
  switch(FUNC3(*s))
  {
   case 'A': check|=(FUNC2(s+1,"%x",&SBPort)==1)?1:0;break;
   case 'I': check|=(FUNC2(s+1,"%d",&SBIRQ)==1)?2:0;break;
   case 'D': check|=(FUNC2(s+1,"%d",&SBDMA)==1)?4:0;break;
   case 'H': check|=(FUNC2(s+1,"%d",&SBDMA16)==1)?8:0;break;
  }
  s++;
 }
 
 if((check^7)&7 || SBDMA>=4 || (SBDMA16<=4 && check&8) || SBIRQ>15)
 {
  FUNC1(" Invalid or incomplete BLASTER environment variable.");
  return(0);
 }
 if(!(check&8))
  format=0;
 return(1);
}