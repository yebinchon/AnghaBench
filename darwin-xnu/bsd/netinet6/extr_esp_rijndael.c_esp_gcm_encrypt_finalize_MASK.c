#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct secasvar {int /*<<< orphan*/  sched; } ;
struct TYPE_2__ {int /*<<< orphan*/  encrypt; } ;
typedef  TYPE_1__ aes_gcm_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_GCM_ALIGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,unsigned int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct secasvar *sav,
			 unsigned char *tag, unsigned int tag_bytes)
{
	aes_gcm_ctx *ctx = (aes_gcm_ctx*)FUNC0(sav->sched, ESP_GCM_ALIGN);
	return (FUNC1(tag, tag_bytes, ctx->encrypt));
}