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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int HASH_LEN ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int const) ; 

__attribute__((used)) static void FUNC2 (const uint8_t *image_hash, const char *label)
{
    char hash_print[HASH_LEN * 2 + 1];
    hash_print[HASH_LEN * 2] = 0;
    for (int i = 0; i < HASH_LEN; ++i) {
        FUNC1(&hash_print[i * 2], "%02x", image_hash[i]);
    }
    FUNC0(TAG, "%s: %s", label, hash_print);
}