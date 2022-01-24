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

/* Variables and functions */
 int HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 char* cur_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int* hash ; 
 int /*<<< orphan*/  md5 ; 
 int /*<<< orphan*/ * out ; 
 int out_size ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    int i;
    FUNC0(md5, hash);
    for (i = 0; i < HASH_SIZE; i++)
        FUNC2("%02x", hash[i]);
    FUNC2(" %d %s\n", out_size, cur_name);
    if (out)
        FUNC1(out);
    out = NULL;
}