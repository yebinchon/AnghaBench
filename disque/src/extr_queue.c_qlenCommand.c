
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * argv; } ;
typedef TYPE_1__ client ;


 int addReplyLongLong (TYPE_1__*,int ) ;
 int queueNameLength (int ) ;

void qlenCommand(client *c) {
    addReplyLongLong(c,queueNameLength(c->argv[1]));
}
