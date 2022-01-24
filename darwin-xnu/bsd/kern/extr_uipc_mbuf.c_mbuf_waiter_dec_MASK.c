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
typedef  scalar_t__ mbuf_class_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ MC_16KCL ; 
 scalar_t__ MC_BIGCL ; 
 scalar_t__ MC_CL ; 
 scalar_t__ MC_MBUF_16KCL ; 
 scalar_t__ MC_MBUF_BIGCL ; 
 scalar_t__ MC_MBUF_CL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(mbuf_class_t class, boolean_t comp)
{
	FUNC1(FUNC0(class));
	if (comp) {
		if (class == MC_CL) {
			FUNC1(FUNC0(MC_MBUF_CL));
		} else if (class == MC_BIGCL) {
			FUNC1(FUNC0(MC_MBUF_BIGCL));
		} else if (class == MC_16KCL) {
			FUNC1(FUNC0(MC_MBUF_16KCL));
		} else {
			FUNC1(FUNC0(MC_MBUF_CL));
			FUNC1(FUNC0(MC_MBUF_BIGCL));
		}
	}
}