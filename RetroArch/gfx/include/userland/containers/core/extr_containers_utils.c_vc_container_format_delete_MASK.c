#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_3__ {scalar_t__ magic; struct TYPE_3__* extradata; } ;
typedef  TYPE_1__ VC_CONTAINER_ES_FORMAT_PRIVATE_T ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_ES_FORMAT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(VC_CONTAINER_ES_FORMAT_T *format)
{
   VC_CONTAINER_ES_FORMAT_PRIVATE_T *private = (VC_CONTAINER_ES_FORMAT_PRIVATE_T *)format;
   FUNC1(private->magic == VC_CONTAINER_ES_FORMAT_MAGIC);
   if(private->extradata) FUNC0(private->extradata);
   FUNC0(private);
}