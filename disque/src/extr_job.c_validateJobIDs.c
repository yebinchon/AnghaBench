
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ robj ;
typedef int client ;


 scalar_t__ C_ERR ;
 int C_OK ;
 int sdslen (int ) ;
 scalar_t__ validateJobIdOrReply (int *,int ,int ) ;

int validateJobIDs(client *c, robj **ids, int count) {
    int j;



    for (j = 0; j < count; j++) {
        if (validateJobIdOrReply(c,ids[j]->ptr,sdslen(ids[j]->ptr))
            == C_ERR) return C_ERR;
    }
    return C_OK;
}
