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
typedef  int /*<<< orphan*/  uint8_t ;
struct MpegEncContext {int dummy; } ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int FUNC0 (struct MpegEncContext*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct MpegEncContext *v, uint8_t *pix1, uint8_t *pix2, ptrdiff_t line_size, int h)
{
    return FUNC0(v, pix1, pix2, line_size, 8, h, 0);
}