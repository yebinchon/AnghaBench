
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
typedef int client ;
struct TYPE_2__ {int crlf; } ;


 int addReply (int *,int ) ;
 int addReplySds (int *,int ) ;
 int sdscatfmt (int ,char*,unsigned long) ;
 int sdsempty () ;
 scalar_t__ sdslen (int ) ;
 TYPE_1__ shared ;

void addReplyBulkSds(client *c, sds s) {
    addReplySds(c,sdscatfmt(sdsempty(),"$%u\r\n",
        (unsigned long)sdslen(s)));
    addReplySds(c,s);
    addReply(c,shared.crlf);
}
