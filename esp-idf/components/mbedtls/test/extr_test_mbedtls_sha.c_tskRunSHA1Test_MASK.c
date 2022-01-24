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
typedef  int /*<<< orphan*/  mbedtls_sha1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int,char*) ; 
 int /*<<< orphan*/  done_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ one_hundred_as ; 
 int /*<<< orphan*/  sha1_thousand_as ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *pvParameters)
{
    mbedtls_sha1_context sha1_ctx;
    unsigned char sha1[20];

    for (int i = 0; i < 1000; i++) {
        FUNC3(&sha1_ctx);
        FUNC0(0, FUNC4(&sha1_ctx));
        for (int j = 0; j < 10; j++) {
            FUNC0(0, FUNC5(&sha1_ctx, (unsigned char *)one_hundred_as, 100));
        }
        FUNC0(0, FUNC2(&sha1_ctx, sha1));
        FUNC1(sha1_thousand_as, sha1, 20, "SHA1 calculation");
    }
    FUNC7(done_sem);
    FUNC6(NULL);
}