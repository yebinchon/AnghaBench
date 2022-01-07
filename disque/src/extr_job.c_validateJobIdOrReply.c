
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int C_ERR ;
 int addReplySds (int *,int ) ;
 int sdsnew (char*) ;
 int validateJobID (char*,size_t) ;

int validateJobIdOrReply(client *c, char *id, size_t len) {
    int retval = validateJobID(id,len);
    if (retval == C_ERR && c)
        addReplySds(c,sdsnew("-BADID Invalid Job ID format.\r\n"));
    return retval;
}
