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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  background_connection_buckets ; 
 scalar_t__ background_connections ; 
 int /*<<< orphan*/  bdaddr_equality_fn ; 
 int /*<<< orphan*/  hash_function_bdaddr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  osi_free_func ; 

__attribute__((used)) static void FUNC2(void)
{
    if (!background_connections) {
        background_connections = FUNC1(background_connection_buckets,
                                      hash_function_bdaddr, NULL, osi_free_func, bdaddr_equality_fn);
        FUNC0(background_connections);
    }
}