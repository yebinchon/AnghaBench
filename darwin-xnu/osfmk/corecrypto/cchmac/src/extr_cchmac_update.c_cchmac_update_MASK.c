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
struct ccdigest_info {int dummy; } ;
typedef  int /*<<< orphan*/  cchmac_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccdigest_info const*,int /*<<< orphan*/ ,size_t,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccdigest_info const*,int /*<<< orphan*/ ) ; 

void FUNC2(const struct ccdigest_info *di, cchmac_ctx_t hc,
                   size_t data_len, const void *data) {
    FUNC0(di, FUNC1(di, hc), data_len, data);
}