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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,struct stat*) ; 
 size_t const FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static int
FUNC15(char *path)
{
    int fd = -1, r;
    struct stat st;
    struct sockaddr_un addr;
    const size_t maxlen = sizeof(addr.sun_path) - 1; // Reserve the last position for '\0'

    FUNC4(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_UNIX;
    if (FUNC9(path) > maxlen) {
        FUNC14("socket path %s is too long (%ld characters), where maximum allowed is %ld",
              path, FUNC9(path), maxlen);
        return -1;
    }
    FUNC10(addr.sun_path, path, maxlen);

    r = FUNC8(path, &st);
    if (r == 0) {
        if (FUNC0(st.st_mode)) {
            FUNC14("removing existing local socket to replace it");
            r = FUNC13(path);
            if (r == -1) {
                FUNC11("unlink");
                return -1;
            }
        } else {
            FUNC12("another file already exists in the given path");
            return -1;
        }
    }

    fd = FUNC7(AF_UNIX, SOCK_STREAM, 0);
    if (fd == -1) {
        FUNC11("socket()");
        return -1;
    }

    r = FUNC6(fd);
    if (r == -1) {
        FUNC2(fd);
        return -1;
    }

    r = FUNC1(fd, (struct sockaddr *) &addr, sizeof(struct sockaddr_un));
    if (r == -1) {
        FUNC11("bind()");
        FUNC2(fd);
        return -1;
    }
    if (verbose) {
        FUNC5("bind %d %s\n", fd, path);
    }

    r = FUNC3(fd, 1024);
    if (r == -1) {
        FUNC11("listen()");
        FUNC2(fd);
        return -1;
    }

    return fd;
}