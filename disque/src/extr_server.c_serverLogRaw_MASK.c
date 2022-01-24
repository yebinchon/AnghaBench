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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* logfile; int verbosity; scalar_t__ pid; scalar_t__ syslog_enabled; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LL_RAW ; 
 int const LOG_DEBUG ; 
 int const LOG_INFO ; 
 int const LOG_NOTICE ; 
 int const LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * stdout ; 
 int FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int const,char*,char const*) ; 

void FUNC10(int level, const char *msg) {
    const int syslogLevelMap[] = { LOG_DEBUG, LOG_INFO, LOG_NOTICE, LOG_WARNING };
    const char *c = ".-*#";
    FILE *fp;
    char buf[64];
    int rawmode = (level & LL_RAW);
    int log_to_stdout = server.logfile[0] == '\0';

    level &= 0xff; /* clear flags */
    if (level < server.verbosity) return;

    fp = log_to_stdout ? stdout : FUNC2(server.logfile,"a");
    if (!fp) return;

    if (rawmode) {
        FUNC3(fp,"%s",msg);
    } else {
        int off;
        struct timeval tv;
        int role_char;
        pid_t pid = FUNC4();

        FUNC5(&tv,NULL);
        off = FUNC8(buf,sizeof(buf),"%d %b %H:%M:%S.",FUNC6(&tv.tv_sec));
        FUNC7(buf+off,sizeof(buf)-off,"%03d",(int)tv.tv_usec/1000);
        if (pid != server.pid) {
            role_char = 'C'; /* AOF writing child. */
        } else {
            role_char = 'P'; /* Parent child. */
        }
        FUNC3(fp,"%d:%c %s %c %s\n",
            (int)FUNC4(),role_char, buf,c[level],msg);
    }
    FUNC1(fp);

    if (!log_to_stdout) FUNC0(fp);
    if (server.syslog_enabled) FUNC9(syslogLevelMap[level], "%s", msg);
}