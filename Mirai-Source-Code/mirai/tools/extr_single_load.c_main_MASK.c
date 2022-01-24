#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  timeText ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/ * SIG_IGN ; 
 void* FUNC0 (char*) ; 
 char* bind_ip ; 
 int bytes_sent ; 
 int debug_mode ; 
 int /*<<< orphan*/  epollFD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ failed_connect ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flood ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ found_srvs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  infd ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  loader ; 
 struct tm* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ login_done ; 
 scalar_t__ FUNC9 (int) ; 
 void* maxConnectedSockets ; 
 int /*<<< orphan*/  FUNC10 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ remote_hangup ; 
 char* run_arg ; 
 scalar_t__ running_threads ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,...) ; 
 TYPE_1__* stateTable ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ timed_out ; 

int FUNC19(int argc, char *argv[ ])
{
    if(argc < 4){
        FUNC5(stderr, "Invalid parameters!\n");
        FUNC5(stdout, "Usage: %s <bind ip> <input file> <file_to_load> <argument> <threads> <connections> (debug mode)\n", argv[0]);
        FUNC2(-1);
    }
    
    FUNC14(SIGPIPE, SIG_IGN);
    
    epollFD = FUNC1(0xDEAD);
    bind_ip = argv[1];
    infd = FUNC4(argv[2], "r");
    FUNC14(SIGINT, &sighandler);
    int threads = FUNC0(argv[5]);
    maxConnectedSockets = FUNC0(argv[6]);
    
    if (argc == 8)
        debug_mode = 1;
    
    int i;
    for(i = 0; i < (1024 * 100); i++)
    {
        FUNC13(&stateTable[i].mutex, NULL);
    }

    FUNC7(argv[3]);
    run_arg = argv[4];

    pthread_t thread;
    FUNC12( &thread, NULL, &loader, (void *) &threads);

    for(i = 0; i < threads; i++) FUNC12( &thread, NULL, &flood, (void *) NULL);

    char timeText[100];
    time_t now = FUNC18(NULL);
    struct tm *t = FUNC8(&now);
    FUNC17(timeText, sizeof(timeText)-1, "%d %b %Y %l:%M %p %Z", t);

    FUNC11("Starting Scan at %s\n", timeText);
    char temp[17] = {0};
    FUNC10(temp, 0, 17);
    FUNC16(temp, "Loaded");
    FUNC11("%-16s", temp);
    FUNC10(temp, 0, 17);
    FUNC16(temp, "State Timeout");
    FUNC11("%-16s", temp);
    FUNC10(temp, 0, 17);
    FUNC16(temp, "No Connect");
    FUNC11("%-16s", temp);
    FUNC10(temp, 0, 17);
    FUNC16(temp, "Closed Us");
    FUNC11("%-16s", temp);
    FUNC10(temp, 0, 17);
    FUNC16(temp, "Logins Tried");
    FUNC11("%-16s", temp);
    FUNC10(temp, 0, 17);
    FUNC16(temp, "B/s");
    FUNC11("%-16s", temp);
    FUNC10(temp, 0, 17);
    FUNC16(temp, "Connected");
    FUNC11("%-16s", temp);
    FUNC10(temp, 0, 17);
    FUNC16(temp, "Running Thrds");
    FUNC11("%s", temp);
    FUNC11("\n");

    FUNC15(1);

    char *new;
    new = (char *)FUNC9(16*6);
    while (debug_mode ? 1 : running_threads > 0)
    {
        FUNC11("\r");
        FUNC10(new, '\0', 16*6);
        FUNC16(new, "%s|%-15lu", new, found_srvs);
        FUNC16(new, "%s|%-15lu", new, timed_out);
        FUNC16(new, "%s|%-15lu", new, failed_connect);
        FUNC16(new, "%s|%-15lu", new, remote_hangup);
        FUNC16(new, "%s|%-15lu", new, login_done);
        FUNC16(new, "%s|%-15d", new, bytes_sent);
        FUNC16(new, "%s|%-15lu", new, FUNC6());
        FUNC16(new, "%s|%-15d", new, running_threads);
        FUNC11("%s", new);
        FUNC3(stdout);
        bytes_sent=0;
        FUNC15(1);
    }
    FUNC11("\n");

    now = FUNC18(NULL);
    t = FUNC8(&now);
    FUNC17(timeText, sizeof(timeText)-1, "%d %b %Y %l:%M %p %Z", t);
    FUNC11("Scan finished at %s\n", timeText);
    return 0;
}