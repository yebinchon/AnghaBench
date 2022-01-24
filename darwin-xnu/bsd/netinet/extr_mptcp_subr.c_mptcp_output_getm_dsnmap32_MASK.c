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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  scalar_t__ u_int32_t ;
struct socket {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(struct socket *so, int off,
    uint32_t *dsn, uint32_t *relseq, uint16_t *data_len, uint16_t *dss_csum)
{
	u_int64_t dsn64;

	FUNC1(so, off, &dsn64, relseq, data_len, dss_csum);
	*dsn = (u_int32_t)FUNC0(dsn64);
}