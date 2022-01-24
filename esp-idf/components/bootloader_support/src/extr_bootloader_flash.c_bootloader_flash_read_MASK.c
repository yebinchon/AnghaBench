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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (size_t,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,void*,size_t) ; 

esp_err_t FUNC3(size_t src, void *dest, size_t size, bool allow_decrypt)
{
    if (allow_decrypt && FUNC0()) {
        return FUNC2(src, dest, size);
    } else {
        return FUNC1(src, dest, size);
    }
}