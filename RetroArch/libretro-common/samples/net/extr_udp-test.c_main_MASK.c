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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  si_other ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  SERVER ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(void)
{
    struct sockaddr_in si_other;
    int s, i, slen=sizeof(si_other);

    if ( (s=FUNC8(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
    {
        FUNC1("socket");
    }

    FUNC6((char *) &si_other, 0, sizeof(si_other));
    si_other.sin_family = AF_INET;
    si_other.sin_port = FUNC4(PORT);

    if (FUNC5(SERVER , &si_other.sin_addr) == 0)
    {
        FUNC3(stderr, "inet_aton() failed\n");
        FUNC2(1);
    }
    while(1)
    {

        char message[10]="128";
        //send the message
        if (FUNC7(s, message, FUNC9(message) , 0 , (struct sockaddr *) &si_other, slen)==-1)
        {
            FUNC1("sendto()");
        }
        /* sleep for 1 frame (60hz) */
        FUNC10(16*1000);

    }

    FUNC0(s);
    return 0;
}