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
 int /*<<< orphan*/  FUNC0 () ; 
#define  SIGABRT 138 
#define  SIGALRM 137 
#define  SIGBUS 136 
#define  SIGFPE 135 
#define  SIGHUP 134 
#define  SIGINT 133 
#define  SIGPIPE 132 
#define  SIGSEGV 131 
#define  SIGTERM 130 
#define  SIGUSR1 129 
#define  SIGUSR2 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(int signum)
{
	FUNC0();
        FUNC2("\nSignal %d has been caught and dealt with...\n",signum);
        switch(signum)
        {
         case SIGINT:FUNC2("How DARE you interrupt me!\n");break;
         case SIGTERM:FUNC2("MUST TERMINATE ALL HUMANS\n");break;
         case SIGHUP:FUNC2("Reach out and hang-up on someone.\n");break;
         case SIGPIPE:FUNC2("The pipe has broken!  Better watch out for floods...\n");break;
         case SIGSEGV:FUNC2("Iyeeeeeeeee!!!  A segmentation fault has occurred.  Have a fluffy day.\n");break;
	 /* So much SIGBUS evil. */
	 #ifdef SIGBUS
	 #if(SIGBUS!=SIGSEGV)
         case SIGBUS:FUNC2("I told you to be nice to the driver.\n");break;
	 #endif
	 #endif
         case SIGFPE:FUNC2("Those darn floating points.  Ne'er know when they'll bite!\n");break;
         case SIGALRM:FUNC2("Don't throw your clock at the meowing cats!\n");break;
         case SIGABRT:FUNC2("Abort, Retry, Ignore, Fail?\n");break;
         case SIGUSR1:
         case SIGUSR2:FUNC2("Killing your processes is not nice.\n");break;
        }
        FUNC1(1);
}