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
 int /*<<< orphan*/  SNTP_OPMODE_POLL ; 
 int /*<<< orphan*/  FUNC0 (long,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(long gmtOffset_sec, int daylightOffset_sec, const char* server1, const char* server2, const char* server3)
{
    FUNC6();  // Should not hurt anything if already inited
    if(FUNC1()){
        FUNC5();
    }
    FUNC3(SNTP_OPMODE_POLL);
    FUNC4(0, (char*)server1);
    FUNC4(1, (char*)server2);
    FUNC4(2, (char*)server3);
    FUNC2();
    FUNC0(-gmtOffset_sec, daylightOffset_sec);
}