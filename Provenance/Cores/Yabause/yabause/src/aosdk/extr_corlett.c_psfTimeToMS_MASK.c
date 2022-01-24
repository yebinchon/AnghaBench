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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

u32 FUNC3(char *str)
{
	int x, c=0;
	u32 acc=0;
	char s[100];

	FUNC2(s,str,100);
	s[99]=0;

	for (x=(int)FUNC1(s); x>=0; x--)
	{
		if (s[x]=='.' || s[x]==',')
		{
			acc=FUNC0(s+x+1);
			s[x]=0;
		}
		else if (s[x]==':')
		{
			if(c==0) 
			{
				acc+=FUNC0(s+x+1)*10;
			}
			else if(c==1) 
			{
				acc+=FUNC0(s+x+(x?1:0))*10*60;
			}

			c++;
			s[x]=0;
		}
		else if (x==0)
		{
			if(c==0)
			{ 
				acc+=FUNC0(s+x)*10;
			}
			else if(c==1) 
			{
				acc+=FUNC0(s+x)*10*60;
			}
			else if(c==2) 
			{
				acc+=FUNC0(s+x)*10*60*60;
			}
		}
	}

	acc*=100;
	return(acc);
}