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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  UInt8 ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/ * CFDataRef ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC6 (char const*) ; 

char *
FUNC7(CFStringRef the_string)
{
    char *result = NULL;
    CFDataRef the_data = NULL;
    const UInt8 *data_bytes = NULL;
    char *converted_string = NULL;
    u_long converted_len = 0;
    u_long bytes_copied = 0;

    the_data = FUNC2(kCFAllocatorDefault,
        the_string, kCFStringEncodingUTF8, 0);
    if (!the_data) {
        FUNC3(stderr, "Failed to convert string\n");
        goto finish;
    }

    data_bytes = FUNC0(the_data);
    if (!data_bytes) {
        FUNC3(stderr, "Failed to get converted string bytes\n");
        goto finish;
    }

    converted_len = FUNC6((const char *)data_bytes) + 1; // +1 for nul
    converted_string = FUNC4(converted_len);
    if (!converted_string) {
        FUNC3(stderr, "Failed to allocate memory\n");
        goto finish;
    }

    bytes_copied = FUNC5(converted_string, (const char *) data_bytes, 
        converted_len) + 1; // +1 for nul
    if (bytes_copied != converted_len) {
        FUNC3(stderr, "Failed to copy converted string\n");
        goto finish;
    }

    result = converted_string;
finish:
    if (the_data) FUNC1(the_data);
    return result;
}