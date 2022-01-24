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

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int LEN ; 
 int /*<<< orphan*/  START_TIMER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int checksum ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int FUNC5(int argc, char **argv)
{
    int i;
    uint8_t data[LEN];

    FUNC3(AV_LOG_DEBUG);

    for (i = 0; i < LEN; i++)
        data[i] = ((i * i) >> 3) + 123 * i;

    if (argc > 1 && !FUNC4(argv[1], "-t")) {
        for (i = 0; i < 1000; i++) {
            START_TIMER;
            checksum = FUNC1(1, data, LEN);
            FUNC0("adler");
        }
    } else {
        checksum = FUNC1(1, data, LEN);
    }

    FUNC2(NULL, AV_LOG_DEBUG, "%X (expected 50E6E508)\n", checksum);
    return checksum == 0x50e6e508 ? 0 : 1;
}