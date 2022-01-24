#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char* rdb_filename; } ;
struct TYPE_3__ {int fd; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_WRONLY ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ config ; 
 TYPE_1__* context ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int,int) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 unsigned long long FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(void) {
    int s = context->fd;
    int fd;
    unsigned long long payload = FUNC6(s);
    char buf[4096];

    FUNC2(stderr,"SYNC sent to master, writing %llu bytes to '%s'\n",
        payload, config.rdb_filename);

    /* Write to file. */
    if (!FUNC7(config.rdb_filename,"-")) {
        fd = STDOUT_FILENO;
    } else {
        fd = FUNC4(config.rdb_filename, O_CREAT|O_WRONLY, 0644);
        if (fd == -1) {
            FUNC2(stderr, "Error opening '%s': %s\n", config.rdb_filename,
                FUNC8(errno));
            FUNC1(1);
        }
    }

    while(payload) {
        ssize_t nread, nwritten;

        nread = FUNC5(s,buf,(payload > sizeof(buf)) ? sizeof(buf) : payload);
        if (nread <= 0) {
            FUNC2(stderr,"I/O Error reading RDB payload from socket\n");
            FUNC1(1);
        }
        nwritten = FUNC9(fd, buf, nread);
        if (nwritten != nread) {
            FUNC2(stderr,"Error writing data to file: %s\n",
                FUNC8(errno));
            FUNC1(1);
        }
        payload -= nread;
    }
    FUNC0(s); /* Close the file descriptor ASAP as fsync() may take time. */
    FUNC3(fd);
    FUNC2(stderr,"Transfer finished with success.\n");
    FUNC1(0);
}