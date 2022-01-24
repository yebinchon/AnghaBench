#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* private; scalar_t__ ppDS; scalar_t__ ppbuf; scalar_t__ ppbufsec; } ;
typedef  TYPE_1__ SexyAL_device ;
typedef  TYPE_1__ DSFobby ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(SexyAL_device *device)
{
 if(device)
 {
  if(device->private)
  {
   DSFobby *tmp=device->private;
   if(tmp->ppbufsec)
   {
    FUNC1(tmp->ppbufsec);
    FUNC0(tmp->ppbufsec);
   }
   if(tmp->ppbuf)
   {
    FUNC1(tmp->ppbuf);
    FUNC0(tmp->ppbuf);
   }
   if(tmp->ppDS)
   {
    FUNC2(tmp->ppDS);
   }
   FUNC3(device->private);
  }
  FUNC3(device);
  FUNC4(1);
  return(1);
 }
 return(0);
}