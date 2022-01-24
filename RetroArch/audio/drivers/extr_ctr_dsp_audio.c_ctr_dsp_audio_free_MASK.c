#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data_pcm16; } ;
struct TYPE_5__ {TYPE_1__ dsp_buf; int /*<<< orphan*/  channel; } ;
typedef  TYPE_2__ ctr_dsp_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *data)
{
   ctr_dsp_audio_t* ctr = (ctr_dsp_audio_t*)data;
   FUNC2(ctr->channel);
   FUNC1(ctr->dsp_buf.data_pcm16);
   FUNC0(ctr);
   FUNC3();
}