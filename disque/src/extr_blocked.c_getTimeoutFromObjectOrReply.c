
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef long long mstime_t ;
typedef int client ;


 int C_ERR ;
 scalar_t__ C_OK ;
 int UNIT_SECONDS ;
 int addReplyError (int *,char*) ;
 scalar_t__ getLongLongFromObjectOrReply (int *,int *,long long*,char*) ;
 scalar_t__ mstime () ;

int getTimeoutFromObjectOrReply(client *c, robj *object, mstime_t *timeout, int unit) {
    long long tval;

    if (getLongLongFromObjectOrReply(c,object,&tval,
        "timeout is not an integer or out of range") != C_OK)
        return C_ERR;

    if (tval < 0) {
        addReplyError(c,"timeout is negative");
        return C_ERR;
    }

    if (tval > 0) {
        if (unit == UNIT_SECONDS) tval *= 1000;
        tval += mstime();
    }
    *timeout = tval;

    return C_OK;
}
