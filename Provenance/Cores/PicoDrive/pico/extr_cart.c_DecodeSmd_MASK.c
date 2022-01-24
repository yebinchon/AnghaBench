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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(unsigned char *data,int len)
{
  unsigned char *temp=NULL;
  int i=0;

  temp=(unsigned char *)FUNC2(0x4000);
  if (temp==NULL) return 1;
  FUNC4(temp,0,0x4000);

  // Interleve each 16k block and shift down by 0x200:
  for (i=0; i+0x4200<=len; i+=0x4000)
  {
    FUNC0(temp,data+0x200+i); // Interleve 16k to temporary buffer
    FUNC3(data+i,temp,0x4000); // Copy back in
  }

  FUNC1(temp);
  return 0;
}