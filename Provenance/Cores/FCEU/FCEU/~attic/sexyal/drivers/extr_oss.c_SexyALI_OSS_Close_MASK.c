#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* private; } ;
typedef  TYPE_1__ SexyAL_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(SexyAL_device *device)
{
 if(device)
 {
  if(device->private) 
  {
   FUNC0(*(int*)device->private);
   FUNC1(device->private);
  }
  FUNC1(device);
  return(1);
 }
 return(0);
}