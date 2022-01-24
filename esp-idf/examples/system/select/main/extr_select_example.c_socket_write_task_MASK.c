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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  socket_fd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *param)
{
    char buf[20];

    FUNC4();

    for (uint8_t i = 1;; ++i) {
        FUNC6(3000 / portTICK_PERIOD_MS);

        FUNC2(buf, sizeof(buf), "Socket message S%d", i);
        int write_bytes = FUNC8(socket_fd, buf, FUNC5(buf));
        if (write_bytes < 0) {
            FUNC0(TAG, "Socket write error");
        } else {
            FUNC1(TAG, "%d bytes were written to socket: %s", write_bytes, buf);
        }
    }

    FUNC3();
    FUNC7(NULL);
}