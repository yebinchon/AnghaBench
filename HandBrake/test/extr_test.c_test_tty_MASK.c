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
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FILE_TYPE_CHAR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int stderr_tty ; 
 int /*<<< orphan*/  stdout ; 
 int stdout_tty ; 

__attribute__((used)) static void FUNC4()
{
#if defined(__MINGW32__)
    HANDLE handle;
    handle = (HANDLE) _get_osfhandle(_fileno(stdout));
    if ((handle != INVALID_HANDLE_VALUE) && (GetFileType(handle) == FILE_TYPE_CHAR))
    {
        stdout_tty = 1;
    }
    handle = (HANDLE) _get_osfhandle(_fileno(stderr));
    if ((handle != INVALID_HANDLE_VALUE) && (GetFileType(handle) == FILE_TYPE_CHAR))
    {
        stderr_tty = 1;
    }
#else
    if (FUNC3(1) == 1)
    {
        stdout_tty = 1;
    }
    if (FUNC3(2) == 1)
    {
        stderr_tty = 1;
    }
#endif

/*
    if (stdout_tty == 1) stdout_sep = "\r";
    if (stderr_tty == 1) stderr_sep = "\r";
*/
}