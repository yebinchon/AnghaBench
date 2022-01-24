#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_7__ {long long multibulklen; scalar_t__ argc; char* querybuf; int bulklen; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int PROTO_INLINE_MAX_SIZE ; 
 long long PROTO_MBULK_BIG_ARG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 void* FUNC5 (char*,int) ; 
 char* FUNC6 () ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 char* FUNC11 (char*,char) ; 
 int FUNC12 (char*,int,long long*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 

int FUNC15(client *c) {
    char *newline = NULL;
    int pos = 0, ok;
    long long ll;

    if (c->multibulklen == 0) {
        /* The client should have been reset */
        FUNC9(c,NULL,c->argc == 0);

        /* Multi bulk length cannot be read without a \r\n */
        newline = FUNC11(c->querybuf,'\r');
        if (newline == NULL) {
            if (FUNC7(c->querybuf) > PROTO_INLINE_MAX_SIZE) {
                FUNC0(c,"Protocol error: too big mbulk count string");
                FUNC10(c,0);
            }
            return C_ERR;
        }

        /* Buffer should also contain \n */
        if (newline-(c->querybuf) > ((signed)FUNC7(c->querybuf)-2))
            return C_ERR;

        /* We know for sure there is a whole line since newline != NULL,
         * so go ahead and find out the multi bulk length. */
        FUNC9(c,NULL,c->querybuf[0] == '*');
        ok = FUNC12(c->querybuf+1,newline-(c->querybuf+1),&ll);
        if (!ok || ll > 1024*1024) {
            FUNC0(c,"Protocol error: invalid multibulk length");
            FUNC10(c,pos);
            return C_ERR;
        }

        pos = (newline-c->querybuf)+2;
        if (ll <= 0) {
            FUNC8(c->querybuf,pos,-1);
            return C_OK;
        }

        c->multibulklen = ll;

        /* Setup argv array on client structure */
        if (c->argv) FUNC13(c->argv);
        c->argv = FUNC14(sizeof(robj*)*c->multibulklen);
    }

    FUNC9(c,NULL,c->multibulklen > 0);
    while(c->multibulklen) {
        /* Read bulk length if unknown */
        if (c->bulklen == -1) {
            newline = FUNC11(c->querybuf+pos,'\r');
            if (newline == NULL) {
                if (FUNC7(c->querybuf) > PROTO_INLINE_MAX_SIZE) {
                    FUNC0(c,
                        "Protocol error: too big bulk count string");
                    FUNC10(c,0);
                    return C_ERR;
                }
                break;
            }

            /* Buffer should also contain \n */
            if (newline-(c->querybuf) > ((signed)FUNC7(c->querybuf)-2))
                break;

            if (c->querybuf[pos] != '$') {
                FUNC1(c,
                    "Protocol error: expected '$', got '%c'",
                    c->querybuf[pos]);
                FUNC10(c,pos);
                return C_ERR;
            }

            ok = FUNC12(c->querybuf+pos+1,newline-(c->querybuf+pos+1),&ll);
            if (!ok || ll < 0 || ll > 512*1024*1024) {
                FUNC0(c,"Protocol error: invalid bulk length");
                FUNC10(c,pos);
                return C_ERR;
            }

            pos += newline-(c->querybuf+pos)+2;
            if (ll >= PROTO_MBULK_BIG_ARG) {
                size_t qblen;

                /* If we are going to read a large object from network
                 * try to make it likely that it will start at c->querybuf
                 * boundary so that we can optimize object creation
                 * avoiding a large copy of data. */
                FUNC8(c->querybuf,pos,-1);
                pos = 0;
                qblen = FUNC7(c->querybuf);
                /* Hint the sds library about the amount of bytes this string is
                 * going to contain. */
                if (qblen < (size_t)ll+2)
                    c->querybuf = FUNC5(c->querybuf,ll+2-qblen);
            }
            c->bulklen = ll;
        }

        /* Read bulk argument */
        if (FUNC7(c->querybuf)-pos < (unsigned)(c->bulklen+2)) {
            /* Not enough data (+2 == trailing \r\n) */
            break;
        } else {
            /* Optimization: if the buffer contains JUST our bulk element
             * instead of creating a new object by *copying* the sds we
             * just use the current sds string. */
            if (pos == 0 &&
                c->bulklen >= PROTO_MBULK_BIG_ARG &&
                (signed) FUNC7(c->querybuf) == c->bulklen+2)
            {
                c->argv[c->argc++] = FUNC2(OBJ_STRING,c->querybuf);
                FUNC4(c->querybuf,-2); /* remove CRLF */
                c->querybuf = FUNC6();
                /* Assume that if we saw a fat argument we'll see another one
                 * likely... */
                c->querybuf = FUNC5(c->querybuf,c->bulklen+2);
                pos = 0;
            } else {
                c->argv[c->argc++] =
                    FUNC3(c->querybuf+pos,c->bulklen);
                pos += c->bulklen+2;
            }
            c->bulklen = -1;
            c->multibulklen--;
        }
    }

    /* Trim to pos */
    if (pos) FUNC8(c->querybuf,pos,-1);

    /* We're done when c->multibulk == 0 */
    if (c->multibulklen == 0) return C_OK;

    /* Still not read to process the command */
    return C_ERR;
}