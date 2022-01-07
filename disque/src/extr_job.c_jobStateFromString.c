
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JOB_STATE_ACKED ;
 int JOB_STATE_ACTIVE ;
 int JOB_STATE_QUEUED ;
 int JOB_STATE_WAIT_REPL ;
 int strcasecmp (char*,char*) ;

int jobStateFromString(char *state) {
    if (!strcasecmp(state,"wait-repl")) return JOB_STATE_WAIT_REPL;
    else if (!strcasecmp(state,"active")) return JOB_STATE_ACTIVE;
    else if (!strcasecmp(state,"queued")) return JOB_STATE_QUEUED;
    else if (!strcasecmp(state,"acked")) return JOB_STATE_ACKED;
    else return -1;
}
