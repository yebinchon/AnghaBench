#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* wavetable; } ;
struct TYPE_3__ {void* wavetable; } ;
struct tremolo {TYPE_2__ right; TYPE_1__ left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void FUNC1(void *data)
{
   struct tremolo *tre = (struct tremolo*)data;
   FUNC0(tre->left.wavetable);
   FUNC0(tre->right.wavetable);
   FUNC0(data);
}