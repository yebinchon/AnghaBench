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
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(int argc, char **argv)
{
    AVDictionary *options = NULL;
    AVIOContext *client = NULL, *server = NULL;
    const char *in_uri, *out_uri;
    int ret, pid;
    FUNC3(AV_LOG_TRACE);
    if (argc < 3) {
        FUNC12("usage: %s input http://hostname[:port]\n"
               "API example program to serve http to multiple clients.\n"
               "\n", argv[0]);
        return 1;
    }

    in_uri = argv[1];
    out_uri = argv[2];

    FUNC4();

    if ((ret = FUNC1(&options, "listen", "2", 0)) < 0) {
        FUNC10(stderr, "Failed to set listen mode for server: %s\n", FUNC2(ret));
        return ret;
    }
    if ((ret = FUNC7(&server, out_uri, AVIO_FLAG_WRITE, NULL, &options)) < 0) {
        FUNC10(stderr, "Failed to open server: %s\n", FUNC2(ret));
        return ret;
    }
    FUNC10(stderr, "Entering main loop.\n");
    for(;;) {
        if ((ret = FUNC5(server, &client)) < 0)
            goto end;
        FUNC10(stderr, "Accepted client, forking process.\n");
        // XXX: Since we don't reap our children and don't ignore signals
        //      this produces zombie processes.
        pid = FUNC9();
        if (pid < 0) {
            FUNC11("Fork failed");
            ret = FUNC0(errno);
            goto end;
        }
        if (pid == 0) {
            FUNC10(stderr, "In child.\n");
            FUNC13(client, in_uri);
            FUNC6(server);
            FUNC8(0);
        }
        if (pid > 0)
            FUNC6(client);
    }
end:
    FUNC6(server);
    if (ret < 0 && ret != AVERROR_EOF) {
        FUNC10(stderr, "Some errors occurred: %s\n", FUNC2(ret));
        return 1;
    }
    return 0;
}