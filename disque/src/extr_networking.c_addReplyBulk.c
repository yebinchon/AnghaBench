
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int robj ;
typedef int client ;
struct TYPE_2__ {int * crlf; } ;


 int addReply (int *,int *) ;
 int addReplyBulkLen (int *,int *) ;
 TYPE_1__ shared ;

void addReplyBulk(client *c, robj *obj) {
    addReplyBulkLen(c,obj);
    addReply(c,obj);
    addReply(c,shared.crlf);
}
