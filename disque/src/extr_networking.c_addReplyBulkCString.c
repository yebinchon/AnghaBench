
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int nullbulk; } ;


 int addReply (int *,int ) ;
 int addReplyBulkCBuffer (int *,char const*,int ) ;
 TYPE_1__ shared ;
 int strlen (char const*) ;

void addReplyBulkCString(client *c, const char *s) {
    if (s == ((void*)0)) {
        addReply(c,shared.nullbulk);
    } else {
        addReplyBulkCBuffer(c,s,strlen(s));
    }
}
