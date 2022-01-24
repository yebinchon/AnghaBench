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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  compressor_decode_scratch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ VM_COMPRESSOR_DEFAULT_CODEC ; 
 int /*<<< orphan*/  WKdm_SCRATCH_BUF_SIZE_INTERNAL ; 
 scalar_t__ vm_compressor_current_codec ; 

uint32_t FUNC1(void) {
	if (vm_compressor_current_codec != VM_COMPRESSOR_DEFAULT_CODEC) {
		return FUNC0(sizeof(compressor_decode_scratch_t), WKdm_SCRATCH_BUF_SIZE_INTERNAL);
	} else {
		return WKdm_SCRATCH_BUF_SIZE_INTERNAL;
	}
}