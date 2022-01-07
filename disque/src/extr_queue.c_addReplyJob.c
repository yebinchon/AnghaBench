
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_deliv; int num_nacks; int body; int id; int queue; } ;
typedef TYPE_1__ job ;
typedef int client ;


 int GETJOB_FLAG_WITHCOUNTERS ;
 int JOB_ID_LEN ;
 int addReplyBulk (int *,int ) ;
 int addReplyBulkCBuffer (int *,int ,int ) ;
 int addReplyBulkCString (int *,char*) ;
 int addReplyLongLong (int *,int ) ;
 int addReplyMultiBulkLen (int *,int) ;
 int sdslen (int ) ;

void addReplyJob(client *c, job *j, int flags) {
    int bulklen = 3;

    if (flags & GETJOB_FLAG_WITHCOUNTERS) bulklen += 4;
    addReplyMultiBulkLen(c,bulklen);

    addReplyBulk(c,j->queue);
    addReplyBulkCBuffer(c,j->id,JOB_ID_LEN);
    addReplyBulkCBuffer(c,j->body,sdslen(j->body));

    if (flags & GETJOB_FLAG_WITHCOUNTERS) {
        addReplyBulkCString(c,"nacks");
        addReplyLongLong(c,j->num_nacks);

        addReplyBulkCString(c,"additional-deliveries");
        addReplyLongLong(c,j->num_deliv);
    }
}
