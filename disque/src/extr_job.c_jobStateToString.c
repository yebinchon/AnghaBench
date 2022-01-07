
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JOB_STATE_ACKED ;

char *jobStateToString(int state) {
    char *states[] = {"wait-repl","active","queued","acked"};
    if (state < 0 || state > JOB_STATE_ACKED) return "unknown";
    return states[state];
}
