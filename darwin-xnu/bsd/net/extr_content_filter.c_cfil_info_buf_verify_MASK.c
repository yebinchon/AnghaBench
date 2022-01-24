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
struct cfi_buf {scalar_t__ cfi_pending_first; scalar_t__ cfi_pending_last; scalar_t__ cfi_pending_mbcnt; int /*<<< orphan*/  cfi_inject_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct cfi_buf *cfi_buf)
{
	FUNC0(&cfi_buf->cfi_inject_q);

	FUNC1(cfi_buf->cfi_pending_first <= cfi_buf->cfi_pending_last);
	FUNC1(cfi_buf->cfi_pending_mbcnt >= 0);
}