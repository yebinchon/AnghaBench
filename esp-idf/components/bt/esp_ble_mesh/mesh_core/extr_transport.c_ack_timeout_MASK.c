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
typedef  unsigned int u8_t ;
struct seg_rx {scalar_t__ ttl; unsigned int seg_n; int /*<<< orphan*/  block; } ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 scalar_t__ BLE_MESH_TTL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline s32_t FUNC4(struct seg_rx *rx)
{
    s32_t to;
    u8_t ttl;

    if (rx->ttl == BLE_MESH_TTL_DEFAULT) {
        ttl = FUNC2();
    } else {
        ttl = rx->ttl;
    }

    /* The acknowledgment timer shall be set to a minimum of
     * 150 + 50 * TTL milliseconds.
     */
    to = FUNC0(150 + (ttl * 50U));

    /* 100 ms for every not yet received segment */
    to += FUNC0(((rx->seg_n + 1) - FUNC3(rx->block)) * 100U);

    /* Make sure we don't send more frequently than the duration for
     * each packet (default is 300ms).
     */
    return FUNC1(to, FUNC0(400));
}