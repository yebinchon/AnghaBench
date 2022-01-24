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
typedef  int /*<<< orphan*/  zmq_msg_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int EOF ; 
 int /*<<< orphan*/  ZMQ_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int FUNC17 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 void* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC26 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 

int FUNC28(int argc, char **argv)
{
    AVBPrint src;
    char *src_buf, *recv_buf;
    int c;
    int recv_buf_size, ret = 0;
    void *zmq_ctx, *socket;
    const char *bind_address = "tcp://localhost:5555";
    const char *infilename = NULL;
    FILE *infile = NULL;
    zmq_msg_t msg;

    while ((c = FUNC9(argc, argv, "b:hi:")) != -1) {
        switch (c) {
        case 'b':
            bind_address = optarg;
            break;
        case 'h':
            FUNC15();
            return 0;
        case 'i':
            infilename = optarg;
            break;
        case '?':
            return 1;
        }
    }

    if (!infilename || !FUNC12(infilename, "-")) {
        infilename = "stdin";
        infile = stdin;
    } else {
        infile = FUNC8(infilename, "r");
    }
    if (!infile) {
        FUNC5(NULL, AV_LOG_ERROR,
               "Impossible to open input file '%s': %s\n", infilename, FUNC13(errno));
        return 1;
    }

    zmq_ctx = FUNC19();
    if (!zmq_ctx) {
        FUNC5(NULL, AV_LOG_ERROR,
               "Could not create ZMQ context: %s\n", FUNC27(errno));
        return 1;
    }

    socket = FUNC26(zmq_ctx, ZMQ_REQ);
    if (!socket) {
        FUNC5(NULL, AV_LOG_ERROR,
               "Could not create ZMQ socket: %s\n", FUNC27(errno));
        ret = 1;
        goto end;
    }

    if (FUNC17(socket, bind_address) == -1) {
        FUNC5(NULL, AV_LOG_ERROR, "Could not bind ZMQ responder to address '%s': %s\n",
               bind_address, FUNC27(errno));
        ret = 1;
        goto end;
    }

    /* grab the input and store it in src */
    FUNC2(&src, 1, AV_BPRINT_SIZE_UNLIMITED);
    while ((c = FUNC7(infile)) != EOF)
        FUNC0(&src, c, 1);
    FUNC0(&src, 0, 1);

    if (!FUNC3(&src)) {
        FUNC5(NULL, AV_LOG_ERROR, "Could not allocate a buffer for the source string\n");
        FUNC1(&src, NULL);
        ret = 1;
        goto end;
    }
    FUNC1(&src, &src_buf);

    if (FUNC25(socket, src_buf, FUNC14(src_buf), 0) == -1) {
        FUNC5(NULL, AV_LOG_ERROR, "Could not send message: %s\n", FUNC27(errno));
        ret = 1;
        goto end;
    }

    if (FUNC22(&msg) == -1) {
        FUNC5(NULL, AV_LOG_ERROR,
               "Could not initialize receiving message: %s\n", FUNC27(errno));
        ret = 1;
        goto end;
    }

    if (FUNC23(&msg, socket, 0) == -1) {
        FUNC5(NULL, AV_LOG_ERROR,
               "Could not receive message: %s\n", FUNC27(errno));
        FUNC20(&msg);
        ret = 1;
        goto end;
    }

    recv_buf_size = FUNC24(&msg) + 1;
    recv_buf = FUNC6(recv_buf_size);
    if (!recv_buf) {
        FUNC5(NULL, AV_LOG_ERROR,
               "Could not allocate receiving message buffer\n");
        FUNC20(&msg);
        ret = 1;
        goto end;
    }
    FUNC10(recv_buf, FUNC21(&msg), recv_buf_size - 1);
    recv_buf[recv_buf_size-1] = 0;
    FUNC11("%s\n", recv_buf);
    FUNC20(&msg);
    FUNC4(recv_buf);

end:
    FUNC16(socket);
    FUNC18(zmq_ctx);
    return ret;
}