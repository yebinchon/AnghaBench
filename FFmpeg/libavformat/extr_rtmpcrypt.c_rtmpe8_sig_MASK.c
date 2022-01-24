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
struct AVXTEA {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AVXTEA*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AVXTEA*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rtmpe8_keys ; 

__attribute__((used)) static void FUNC2(const uint8_t *in, uint8_t *out, int key_id)
{
    struct AVXTEA ctx;

    FUNC1(&ctx, rtmpe8_keys[key_id]);
    FUNC0(&ctx, out, in, 1, NULL, 0);
}