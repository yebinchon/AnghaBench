
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ job ;
typedef int client ;


 int JOB_ID_LEN ;
 int addReplyStatusLength (int *,int ,int ) ;

void addReplyJobID(client *c, job *j) {
    addReplyStatusLength(c,j->id,JOB_ID_LEN);
}
