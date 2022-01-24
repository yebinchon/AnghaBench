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
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int AV_HASH_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hash ; 
 scalar_t__ out_b64 ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    char res[2 * AV_HASH_MAX_SIZE + 4];

    FUNC3("%s=", FUNC2(hash));
    if (out_b64) {
        FUNC0(hash, res, sizeof(res));
        FUNC3("b64:%s", res);
    } else {
        FUNC1(hash, res, sizeof(res));
        FUNC3("0x%s", res);
    }
}