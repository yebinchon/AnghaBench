
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int addReplyStatusLength (int *,char const*,int ) ;
 int strlen (char const*) ;

void addReplyStatus(client *c, const char *status) {
    addReplyStatusLength(c,status,strlen(status));
}
