
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int client ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ ERANGE ;
 int addReplyError (int *,char*) ;
 scalar_t__ errno ;
 scalar_t__ isspace (char) ;
 unsigned long strtoul (scalar_t__,char**,int) ;

int parseScanCursorOrReply(client *c, robj *o, unsigned long *cursor) {
    char *eptr;



    errno = 0;
    *cursor = strtoul(o->ptr, &eptr, 10);
    if (isspace(((char*)o->ptr)[0]) || eptr[0] != '\0' || errno == ERANGE)
    {
        addReplyError(c, "invalid cursor or option name");
        return C_ERR;
    }
    return C_OK;
}
