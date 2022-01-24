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
typedef  int /*<<< orphan*/  scale3x_uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 

void FUNC3(scale3x_uint8* dst0, scale3x_uint8* dst1, scale3x_uint8* dst2, const scale3x_uint8* src0, const scale3x_uint8* src1, const scale3x_uint8* src2, unsigned count)
{
	FUNC0(count >= 2);

	FUNC1(dst0, src0, src1, src2, count);
	FUNC2(dst1, src0, src1, src2, count);
	FUNC1(dst2, src2, src1, src0, count);
}