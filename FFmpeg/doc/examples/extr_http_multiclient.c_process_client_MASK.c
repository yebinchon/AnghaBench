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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_HTTP_NOT_FOUND ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char**) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 scalar_t__ FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(AVIOContext *client, const char *in_uri)
{
    AVIOContext *input = NULL;
    uint8_t buf[1024];
    int ret, n, reply_code;
    uint8_t *resource = NULL;
    while ((ret = FUNC7(client)) > 0) {
        FUNC3(client, "resource", AV_OPT_SEARCH_CHILDREN, &resource);
        // check for strlen(resource) is necessary, because av_opt_get()
        // may return empty string.
        if (resource && FUNC13(resource))
            break;
        FUNC1(&resource);
    }
    if (ret < 0)
        goto end;
    FUNC2(client, AV_LOG_TRACE, "resource=%p\n", resource);
    if (resource && resource[0] == '/' && !FUNC12((resource + 1), in_uri)) {
        reply_code = 200;
    } else {
        reply_code = AVERROR_HTTP_NOT_FOUND;
    }
    if ((ret = FUNC4(client, "reply_code", reply_code, AV_OPT_SEARCH_CHILDREN)) < 0) {
        FUNC2(client, AV_LOG_ERROR, "Failed to set reply_code: %s.\n", FUNC0(ret));
        goto end;
    }
    FUNC2(client, AV_LOG_TRACE, "Set reply code to %d\n", reply_code);

    while ((ret = FUNC7(client)) > 0);

    if (ret < 0)
        goto end;

    FUNC11(stderr, "Handshake performed.\n");
    if (reply_code != 200)
        goto end;
    FUNC11(stderr, "Opening input file.\n");
    if ((ret = FUNC8(&input, in_uri, AVIO_FLAG_READ, NULL, NULL)) < 0) {
        FUNC2(input, AV_LOG_ERROR, "Failed to open input: %s: %s.\n", in_uri,
               FUNC0(ret));
        goto end;
    }
    for(;;) {
        n = FUNC9(input, buf, sizeof(buf));
        if (n < 0) {
            if (n == AVERROR_EOF)
                break;
            FUNC2(input, AV_LOG_ERROR, "Error reading from input: %s.\n",
                   FUNC0(n));
            break;
        }
        FUNC10(client, buf, n);
        FUNC6(client);
    }
end:
    FUNC11(stderr, "Flushing client\n");
    FUNC6(client);
    FUNC11(stderr, "Closing client\n");
    FUNC5(client);
    FUNC11(stderr, "Closing input\n");
    FUNC5(input);
    FUNC1(&resource);
}