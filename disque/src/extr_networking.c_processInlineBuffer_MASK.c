#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_5__ {char* querybuf; char** argv; size_t argc; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 scalar_t__ PROTO_INLINE_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,int) ; 
 char** FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 char** FUNC10 (int) ; 

int FUNC11(client *c) {
    char *newline;
    int argc, j;
    sds *argv, aux;
    size_t querylen;

    /* Search for end of line */
    newline = FUNC8(c->querybuf,'\n');

    /* Nothing to do without a \r\n */
    if (newline == NULL) {
        if (FUNC3(c->querybuf) > PROTO_INLINE_MAX_SIZE) {
            FUNC0(c,"Protocol error: too big inline request");
            FUNC7(c,0);
        }
        return C_ERR;
    }

    /* Handle the \r\n case. */
    if (newline && newline != c->querybuf && *(newline-1) == '\r')
        newline--;

    /* Split the input buffer up to the \r\n */
    querylen = newline-(c->querybuf);
    aux = FUNC4(c->querybuf,querylen);
    argv = FUNC6(aux,&argc);
    FUNC2(aux);
    if (argv == NULL) {
        FUNC0(c,"Protocol error: unbalanced quotes in request");
        FUNC7(c,0);
        return C_ERR;
    }

    /* Leave data after the first line of the query in the buffer */
    FUNC5(c->querybuf,querylen+2,-1);

    /* Setup argv array on client structure */
    if (c->argv) FUNC9(c->argv);
    c->argv = FUNC10(sizeof(robj*)*argc);

    /* Create disque objects for all arguments. */
    for (c->argc = 0, j = 0; j < argc; j++) {
        if (FUNC3(argv[j])) {
            c->argv[c->argc] = FUNC1(OBJ_STRING,argv[j]);
            c->argc++;
        } else {
            FUNC2(argv[j]);
        }
    }
    FUNC9(argv);
    return C_OK;
}