
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int client ;
struct TYPE_6__ {int * bulkhdr; } ;


 size_t OBJ_SHARED_BULKHDR_LEN ;
 int addReply (int *,int ) ;
 int addReplyLongLongWithPrefix (int *,size_t,char) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 size_t sdslen (scalar_t__) ;
 TYPE_2__ shared ;

void addReplyBulkLen(client *c, robj *obj) {
    size_t len;

    if (sdsEncodedObject(obj)) {
        len = sdslen(obj->ptr);
    } else {
        long n = (long)obj->ptr;


        len = 1;
        if (n < 0) {
            len++;
            n = -n;
        }
        while((n = n/10) != 0) {
            len++;
        }
    }

    if (len < OBJ_SHARED_BULKHDR_LEN)
        addReply(c,shared.bulkhdr[len]);
    else
        addReplyLongLongWithPrefix(c,len,'$');
}
