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
typedef  int uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
 int ret;
 uint8 t;

 if(!FUNC1(0xE1))
  return(0);
 if(!FUNC0(&t))
  return(0);
 ret=t<<8;
 if(!FUNC0(&t))
  return(0);
 ret|=t;

 return(ret);
}