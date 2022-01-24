#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ key; } ;
typedef  TYPE_1__ slot_t ;
struct TYPE_6__ {TYPE_1__* slot; } ;

/* Variables and functions */
 TYPE_4__ scsp ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  slot_t *slot;

  for(slot = &(scsp.slot[0]); slot < &(scsp.slot[32]); slot++)
    {
      if (slot->key)
        FUNC1 (slot);
      else
        FUNC0 (slot);
    }
}