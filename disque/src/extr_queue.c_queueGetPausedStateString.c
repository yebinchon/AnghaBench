
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int QUEUE_FLAG_PAUSED_ALL ;
 int QUEUE_FLAG_PAUSED_IN ;
 int QUEUE_FLAG_PAUSED_OUT ;

char *queueGetPausedStateString(uint32_t qflags) {
    qflags &= QUEUE_FLAG_PAUSED_ALL;
    if (qflags == QUEUE_FLAG_PAUSED_ALL) {
        return "all";
    } else if (qflags == QUEUE_FLAG_PAUSED_IN) {
        return "in";
    } else if (qflags == QUEUE_FLAG_PAUSED_OUT) {
        return "out";
    } else {
        return "none";
    }
}
