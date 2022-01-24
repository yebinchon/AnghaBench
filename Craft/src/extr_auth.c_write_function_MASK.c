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
 scalar_t__ MAX_RESPONSE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 

size_t FUNC5(char *data, size_t size, size_t count, void *arg) {
    size_t length = size * count;
    char *dst = (char *)arg;
    char *src = FUNC1(length + 1);
    FUNC2(src, data, length);
    src[length] = '\0';
    FUNC4(dst, src, MAX_RESPONSE_LENGTH - FUNC3(dst) - 1);
    FUNC0(src);
    return length;
}