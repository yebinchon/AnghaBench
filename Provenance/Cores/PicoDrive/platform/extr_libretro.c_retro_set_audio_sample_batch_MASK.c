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
typedef  int /*<<< orphan*/  retro_audio_sample_batch_t ;

/* Variables and functions */
 int /*<<< orphan*/  audio_batch_cb ; 

void FUNC0(retro_audio_sample_batch_t cb) { audio_batch_cb = cb; }