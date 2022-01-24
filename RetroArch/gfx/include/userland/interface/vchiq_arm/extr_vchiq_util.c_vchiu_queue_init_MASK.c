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
struct TYPE_4__ {int size; int /*<<< orphan*/ * storage; int /*<<< orphan*/  push; int /*<<< orphan*/  pop; scalar_t__ write; scalar_t__ read; } ;
typedef  TYPE_1__ VCHIU_QUEUE_T ;
typedef  int /*<<< orphan*/  VCHIQ_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(VCHIU_QUEUE_T *queue, int size)
{
   FUNC2(FUNC0(size));

   queue->size = size;
   queue->read = 0;
   queue->write = 0;

   FUNC3(&queue->pop, "vchiu");
   FUNC3(&queue->push, "vchiu");

   queue->storage = FUNC4(size * sizeof(VCHIQ_HEADER_T *), VCOS_FUNCTION);
   if (queue->storage == NULL)
   {
      FUNC1(queue);
      return 0;
   }
   return 1;
}