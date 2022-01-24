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
struct TYPE_3__ {int /*<<< orphan*/  buffer_r; int /*<<< orphan*/  buffer_l; int /*<<< orphan*/  mvoice; } ;
typedef  TYPE_1__ ax_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * wiiu_cb_ax ; 

__attribute__((used)) static void FUNC5(void* data)
{
   ax_audio_t* ax = (ax_audio_t*)data;
   wiiu_cb_ax     = NULL;

   FUNC2(NULL);
   FUNC0(ax->mvoice);
   FUNC1();

   FUNC3(ax->buffer_l);
   FUNC3(ax->buffer_r);
   FUNC4(ax);
}