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
typedef  int /*<<< orphan*/  uint32_t ;
struct AVBlowfish {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AVBlowfish*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct AVBlowfish*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * rtmpe9_keys ; 

__attribute__((used)) static void FUNC4(const uint8_t *in, uint8_t *out, int key_id)
{
    struct AVBlowfish ctx;
    uint32_t xl, xr;

    xl = FUNC0(in);
    xr = FUNC0(in + 4);

    FUNC3(&ctx, rtmpe9_keys[key_id], 24);
    FUNC2(&ctx, &xl, &xr, 0);

    FUNC1(out, xl);
    FUNC1(out + 4, xr);
}