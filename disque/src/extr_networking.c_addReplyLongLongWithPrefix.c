
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
typedef int buf ;
struct TYPE_2__ {int * bulkhdr; int * mbulkhdr; } ;


 long long OBJ_SHARED_BULKHDR_LEN ;
 int addReply (int *,int ) ;
 int addReplyString (int *,char*,int) ;
 int ll2string (char*,int,long long) ;
 TYPE_1__ shared ;

void addReplyLongLongWithPrefix(client *c, long long ll, char prefix) {
    char buf[128];
    int len;




    if (prefix == '*' && ll < OBJ_SHARED_BULKHDR_LEN) {
        addReply(c,shared.mbulkhdr[ll]);
        return;
    } else if (prefix == '$' && ll < OBJ_SHARED_BULKHDR_LEN) {
        addReply(c,shared.bulkhdr[ll]);
        return;
    }

    buf[0] = prefix;
    len = ll2string(buf+1,sizeof(buf)-1,ll);
    buf[len+1] = '\r';
    buf[len+2] = '\n';
    addReplyString(c,buf,len+3);
}
