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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(int fd, const fd_set *rfds, const char *src_msg)
{
    char buf[100];
    int read_bytes;

    if (FUNC2(fd, rfds)) {
        if ((read_bytes = FUNC3(fd, buf, sizeof(buf)-1)) > 0) {
            buf[read_bytes] = '\0';
            FUNC1(TAG, "%d bytes were received through %s: %s", read_bytes, src_msg, buf);
        } else {
            FUNC0(TAG, "%s read error", src_msg);
        }
    }
}