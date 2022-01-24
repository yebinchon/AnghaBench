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
struct TYPE_4__ {int /*<<< orphan*/  (* DeInit ) () ;} ;
struct TYPE_3__ {int /*<<< orphan*/ * data32; } ;

/* Variables and functions */
 TYPE_2__* SNDCore ; 
 int /*<<< orphan*/ * SoundRam ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* scspchannel ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4 (void)
{
  if (scspchannel[0].data32)
    FUNC1(scspchannel[0].data32);
  scspchannel[0].data32 = NULL;

  if (scspchannel[1].data32)
    FUNC1(scspchannel[1].data32);
  scspchannel[1].data32 = NULL;

  if (SNDCore)
    SNDCore->DeInit();
  SNDCore = NULL;

  FUNC2();

  if (SoundRam)
    FUNC0 (SoundRam);
  SoundRam = NULL;
}