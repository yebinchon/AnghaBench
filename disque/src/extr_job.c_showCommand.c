
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int job ;
struct TYPE_9__ {TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {int nullbulk; } ;
struct TYPE_8__ {int ptr; } ;


 scalar_t__ C_ERR ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyJobInfo (TYPE_2__*,int *) ;
 int * lookupJob (int ) ;
 int sdslen (int ) ;
 TYPE_5__ shared ;
 scalar_t__ validateJobIdOrReply (TYPE_2__*,int ,int ) ;

void showCommand(client *c) {
    if (validateJobIdOrReply(c,c->argv[1]->ptr,sdslen(c->argv[1]->ptr))
        == C_ERR) return;

    job *j = lookupJob(c->argv[1]->ptr);
    if (!j) {
        addReply(c,shared.nullbulk);
        return;
    }
    addReplyJobInfo(c,j);
}
