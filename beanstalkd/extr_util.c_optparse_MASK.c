#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
struct TYPE_4__ {int syncrate; int wantsync; int use; void* dir; void* filesize; } ;
struct TYPE_5__ {TYPE_1__ wal; void* user; void* addr; void* port; } ;
typedef  TYPE_2__ Server ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 char* JOB_DATA_SIZE_LIMIT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* job_data_size_limit ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  verbose ; 
 char* version ; 
 int /*<<< orphan*/  FUNC6 (char*,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void
FUNC8(Server *s, char **argv)
{
    int64 ms;
    char *arg, *tmp;
#   define EARGF(x) (*arg ? (tmp=arg,arg="",tmp) : *argv ? *argv++ : (x))

    while ((arg = *argv++) && *arg++ == '-' && *arg) {
        char c;
        while ((c = *arg++)) {
            switch (c) {
                case 'p':
                    s->port = EARGF(FUNC2("-p"));
                    FUNC6("-p", s->port);
                    break;
                case 'l':
                    s->addr = EARGF(FUNC2("-l"));
                    FUNC6("-l", s->addr);
                    break;
                case 'z':
                    job_data_size_limit = FUNC3(EARGF(FUNC2("-z")));
                    if (job_data_size_limit > JOB_DATA_SIZE_LIMIT_MAX) {
                        FUNC7("maximum job size was set to %d", JOB_DATA_SIZE_LIMIT_MAX);
                        job_data_size_limit = JOB_DATA_SIZE_LIMIT_MAX;
                    }
                    break;
                case 's':
                    s->wal.filesize = FUNC3(EARGF(FUNC2("-s")));
                    break;
                case 'c':
                    FUNC7("-c flag was removed. binlog is always compacted.");
                    break;
                case 'n':
                    FUNC7("-n flag was removed. binlog is always compacted.");
                    break;
                case 'f':
                    ms = (int64)FUNC3(EARGF(FUNC2("-f")));
                    s->wal.syncrate = ms * 1000000;
                    s->wal.wantsync = 1;
                    break;
                case 'F':
                    s->wal.wantsync = 0;
                    break;
                case 'u':
                    s->user = EARGF(FUNC2("-u"));
                    break;
                case 'b':
                    s->wal.dir = EARGF(FUNC2("-b"));
                    s->wal.use = 1;
                    break;
                case 'h':
                    FUNC5(0);
                case 'v':
                    FUNC4("beanstalkd %s\n", version);
                    FUNC1(0);
                case 'V':
                    verbose++;
                    break;
                default:
                    FUNC7("unknown flag: %s", arg-2);
                    FUNC5(5);
            }
        }
    }
    if (arg) {
        FUNC7("unknown argument: %s", arg-1);
        FUNC5(5);
    }
}