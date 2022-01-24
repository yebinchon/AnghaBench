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
struct TYPE_4__ {void* maxstring; void* minstring; void** bulkhdr; void** mbulkhdr; TYPE_1__** integers; void* deljob; void* loadjob; void* punsubscribebulk; void* psubscribebulk; void* unsubscribebulk; void* subscribebulk; void* pmessagebulk; void* messagebulk; void* plus; void* colon; void* space; void* busykeyerr; void* noreplicaserr; void* execaborterr; void* oomerr; void* noautherr; void* roslaveerr; void* masterdownerr; void* slowscripterr; void* loadingerr; void* noscripterr; void* outofrangeerr; void* leavingerr; void* syntaxerr; void* nokeyerr; void* wrongtypeerr; void* queued; void* pong; void* emptymultibulk; void* nullmultibulk; void* nullbulk; void* cnegone; void* cone; void* czero; void* emptybulk; void* err; void* ok; void* crlf; } ;
struct TYPE_3__ {int /*<<< orphan*/  encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ENCODING_INT ; 
 int OBJ_SHARED_BULKHDR_LEN ; 
 int OBJ_SHARED_INTEGERS ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC1 (char*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (char*) ; 
 TYPE_2__ shared ; 

void FUNC5(void) {
    int j;

    shared.crlf = FUNC0(OBJ_STRING,FUNC4("\r\n"));
    shared.ok = FUNC0(OBJ_STRING,FUNC4("+OK\r\n"));
    shared.err = FUNC0(OBJ_STRING,FUNC4("-ERR\r\n"));
    shared.emptybulk = FUNC0(OBJ_STRING,FUNC4("$0\r\n\r\n"));
    shared.czero = FUNC0(OBJ_STRING,FUNC4(":0\r\n"));
    shared.cone = FUNC0(OBJ_STRING,FUNC4(":1\r\n"));
    shared.cnegone = FUNC0(OBJ_STRING,FUNC4(":-1\r\n"));
    shared.nullbulk = FUNC0(OBJ_STRING,FUNC4("$-1\r\n"));
    shared.nullmultibulk = FUNC0(OBJ_STRING,FUNC4("*-1\r\n"));
    shared.emptymultibulk = FUNC0(OBJ_STRING,FUNC4("*0\r\n"));
    shared.pong = FUNC0(OBJ_STRING,FUNC4("+PONG\r\n"));
    shared.queued = FUNC0(OBJ_STRING,FUNC4("+QUEUED\r\n"));
    shared.wrongtypeerr = FUNC0(OBJ_STRING,FUNC4(
        "-WRONGTYPE Operation against a key holding the wrong kind of value\r\n"));
    shared.nokeyerr = FUNC0(OBJ_STRING,FUNC4(
        "-ERR no such key\r\n"));
    shared.syntaxerr = FUNC0(OBJ_STRING,FUNC4(
        "-ERR syntax error\r\n"));
    shared.leavingerr = FUNC0(OBJ_STRING,FUNC4(
        "-LEAVING This node is leaving the cluster, "
        "please connect to a different one\r\n"));
    shared.outofrangeerr = FUNC0(OBJ_STRING,FUNC4(
        "-ERR index out of range\r\n"));
    shared.noscripterr = FUNC0(OBJ_STRING,FUNC4(
        "-NOSCRIPT No matching script. Please use EVAL.\r\n"));
    shared.loadingerr = FUNC0(OBJ_STRING,FUNC4(
        "-LOADING Disque is loading the dataset in memory\r\n"));
    shared.slowscripterr = FUNC0(OBJ_STRING,FUNC4(
        "-BUSY Disque is busy running a script. You can only call SCRIPT KILL or SHUTDOWN NOSAVE.\r\n"));
    shared.masterdownerr = FUNC0(OBJ_STRING,FUNC4(
        "-MASTERDOWN Link with MASTER is down and slave-serve-stale-data is set to 'no'.\r\n"));
    shared.roslaveerr = FUNC0(OBJ_STRING,FUNC4(
        "-READONLY You can't write against a read only slave.\r\n"));
    shared.noautherr = FUNC0(OBJ_STRING,FUNC4(
        "-NOAUTH Authentication required.\r\n"));
    shared.oomerr = FUNC0(OBJ_STRING,FUNC4(
        "-OOM command not allowed when used memory > 'maxmemory'.\r\n"));
    shared.execaborterr = FUNC0(OBJ_STRING,FUNC4(
        "-EXECABORT Transaction discarded because of previous errors.\r\n"));
    shared.noreplicaserr = FUNC0(OBJ_STRING,FUNC4(
        "-NOREPLICAS Not enough good slaves to write.\r\n"));
    shared.busykeyerr = FUNC0(OBJ_STRING,FUNC4(
        "-BUSYKEY Target key name already exists.\r\n"));
    shared.space = FUNC0(OBJ_STRING,FUNC4(" "));
    shared.colon = FUNC0(OBJ_STRING,FUNC4(":"));
    shared.plus = FUNC0(OBJ_STRING,FUNC4("+"));
    shared.messagebulk = FUNC1("$7\r\nmessage\r\n",13);
    shared.pmessagebulk = FUNC1("$8\r\npmessage\r\n",14);
    shared.subscribebulk = FUNC1("$9\r\nsubscribe\r\n",15);
    shared.unsubscribebulk = FUNC1("$11\r\nunsubscribe\r\n",18);
    shared.psubscribebulk = FUNC1("$10\r\npsubscribe\r\n",17);
    shared.punsubscribebulk = FUNC1("$12\r\npunsubscribe\r\n",19);
    shared.loadjob = FUNC1("LOADJOB",7);
    shared.deljob = FUNC1("DELJOB",6);
    for (j = 0; j < OBJ_SHARED_INTEGERS; j++) {
        shared.integers[j] = FUNC0(OBJ_STRING,(void*)(long)j);
        shared.integers[j]->encoding = OBJ_ENCODING_INT;
    }
    for (j = 0; j < OBJ_SHARED_BULKHDR_LEN; j++) {
        shared.mbulkhdr[j] = FUNC0(OBJ_STRING,
            FUNC2(FUNC3(),"*%d\r\n",j));
        shared.bulkhdr[j] = FUNC0(OBJ_STRING,
            FUNC2(FUNC3(),"$%d\r\n",j));
    }
    /* The following two shared objects, minstring and maxstrings, are not
     * actually used for their value but as a special object meaning
     * respectively the minimum possible string and the maximum possible
     * string in string comparisons for the ZRANGEBYLEX command. */
    shared.minstring = FUNC1("minstring",9);
    shared.maxstring = FUNC1("maxstring",9);
}