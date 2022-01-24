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
typedef  int /*<<< orphan*/  base64_encodestate ;

/* Variables and functions */
 int FUNC0 (char const*,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(const char* plaintext_in, int length_in, char* code_out)
{
    base64_encodestate _state;
    FUNC2(&_state);
    int len = FUNC0(plaintext_in, length_in, code_out, &_state);
    return len + FUNC1((code_out + len), &_state);
}