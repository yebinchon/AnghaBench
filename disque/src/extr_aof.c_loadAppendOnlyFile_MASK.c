#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct serverCommand {int /*<<< orphan*/  (* proc ) (struct client*) ;} ;
struct disque_stat {scalar_t__ st_size; } ;
struct client {int argc; scalar_t__ bufpos; int flags; int /*<<< orphan*/  reply; TYPE_1__** argv; } ;
typedef  char* sds ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int aof_state; int aof_fd; scalar_t__ aof_load_truncated; scalar_t__ aof_current_size; scalar_t__ aof_rewrite_base_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AOF_OFF ; 
 int CLIENT_BLOCKED ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*) ; 
 struct client* FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct disque_stat*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct client*) ; 
 int /*<<< orphan*/  FUNC13 (struct client*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 struct serverCommand* FUNC17 (scalar_t__) ; 
 int FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 char* FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC27 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (struct client*) ; 
 int FUNC29 (char*,int) ; 
 TYPE_1__** FUNC30 (int) ; 

int FUNC31(char *filename) {
    struct client *fakeClient;
    FILE *fp = FUNC10(filename,"r");
    struct disque_stat sb;
    int old_aof_state = server.aof_state;
    long loops = 0;
    off_t valid_up_to = 0; /* Offset of the latest well-formed command loaded. */

    if (fp && FUNC4(FUNC9(fp),&sb) != -1 && sb.st_size == 0) {
        server.aof_current_size = 0;
        FUNC6(fp);
        return C_ERR;
    }

    if (fp == NULL) {
        FUNC23(LL_WARNING,"Fatal error: can't open the append log file for reading: %s",FUNC26(errno));
        FUNC5(1);
    }

    /* Temporarily disable AOF, to prevent EXEC from feeding a MULTI
     * to the same file we're about to read. */
    server.aof_state = AOF_OFF;

    fakeClient = FUNC2();
    FUNC24(fp);

    while(1) {
        int argc, j;
        unsigned long len;
        robj **argv;
        char buf[128];
        sds argsds;
        struct serverCommand *cmd;

        /* Serve the clients from time to time */
        if (!(loops++ % 1000)) {
            FUNC16(FUNC14(fp));
            FUNC19();
        }

        if (FUNC8(buf,sizeof(buf),fp) == NULL) {
            if (FUNC7(fp))
                break;
            else
                goto readerr;
        }
        if (buf[0] != '*') goto fmterr;
        if (buf[1] == '\0') goto readerr;
        argc = FUNC1(buf+1);
        if (argc < 1) goto fmterr;

        argv = FUNC30(sizeof(robj*)*argc);
        fakeClient->argc = argc;
        fakeClient->argv = argv;

        for (j = 0; j < argc; j++) {
            if (FUNC8(buf,sizeof(buf),fp) == NULL) {
                fakeClient->argc = j; /* Free up to j-1. */
                FUNC13(fakeClient);
                goto readerr;
            }
            if (buf[0] != '$') goto fmterr;
            len = FUNC27(buf+1,NULL,10);
            argsds = FUNC21(NULL,len);
            if (len && FUNC11(argsds,len,1,fp) == 0) {
                FUNC20(argsds);
                fakeClient->argc = j; /* Free up to j-1. */
                FUNC13(fakeClient);
                goto readerr;
            }
            argv[j] = FUNC3(OBJ_STRING,argsds);
            if (FUNC11(buf,2,1,fp) == 0) {
                fakeClient->argc = j+1; /* Free up to j. */
                FUNC13(fakeClient);
                goto readerr; /* discard CRLF */
            }
        }

        /* Command lookup */
        cmd = FUNC17(argv[0]->ptr);
        if (!cmd) {
            FUNC23(LL_WARNING,"Unknown command '%s' reading the append only file", (char*)argv[0]->ptr);
            FUNC5(1);
        }

        /* Run the command in the context of a fake client */
        cmd->proc(fakeClient);

        /* The fake client should not have a reply */
        FUNC22(fakeClient->bufpos == 0 && FUNC15(fakeClient->reply) == 0);
        /* The fake client should never get blocked */
        FUNC22((fakeClient->flags & CLIENT_BLOCKED) == 0);

        /* Clean up. Command code may have changed argv/argc so we use the
         * argv/argc of the client instead of the local variables. */
        FUNC13(fakeClient);
        if (server.aof_load_truncated) valid_up_to = FUNC14(fp);
    }

loaded_ok: /* DB loaded, cleanup and return C_OK to the caller. */
    FUNC6(fp);
    FUNC12(fakeClient);
    server.aof_state = old_aof_state;
    FUNC25();
    FUNC0();
    server.aof_rewrite_base_size = server.aof_current_size;
    return C_OK;

readerr: /* Read error. If feof(fp) is true, fall through to unexpected EOF. */
    if (!FUNC7(fp)) {
        FUNC23(LL_WARNING,"Unrecoverable error reading the append only file: %s", FUNC26(errno));
        FUNC5(1);
    }

    /* Unexpected AOF end of file. */
    if (server.aof_load_truncated) {
        FUNC23(LL_WARNING,"!!! Warning: short read while loading the AOF file !!!");
        FUNC23(LL_WARNING,"!!! Truncating the AOF at offset %llu !!!",
            (unsigned long long) valid_up_to);
        if (valid_up_to == -1 || FUNC29(filename,valid_up_to) == -1) {
            if (valid_up_to == -1) {
                FUNC23(LL_WARNING,"Last valid command offset is invalid");
            } else {
                FUNC23(LL_WARNING,"Error truncating the AOF file: %s",
                    FUNC26(errno));
            }
        } else {
            /* Make sure the AOF file descriptor points to the end of the
             * file after the truncate call. */
            if (server.aof_fd != -1 && FUNC18(server.aof_fd,0,SEEK_END) == -1) {
                FUNC23(LL_WARNING,"Can't seek the end of the AOF file: %s",
                    FUNC26(errno));
            } else {
                FUNC23(LL_WARNING,
                    "AOF loaded anyway because aof-load-truncated is enabled");
                goto loaded_ok;
            }
        }
    }
    FUNC23(LL_WARNING,"Unexpected end of file reading the append only file. You can: 1) Make a backup of your AOF file, then use ./disque-check-aof --fix <filename>. 2) Alternatively you can set the 'aof-load-truncated' configuration option to yes and restart the server.");
    FUNC5(1);

fmterr: /* Format error. */
    FUNC23(LL_WARNING,"Bad file format reading the append only file: make a backup of your AOF file, then use ./disque-check-aof --fix <filename>");
    FUNC5(1);
}