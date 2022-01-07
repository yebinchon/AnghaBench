
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nodes_confirmed; scalar_t__ nodes_delivered; int body; scalar_t__ queue; } ;
typedef TYPE_1__ job ;


 int decrRefCount (scalar_t__) ;
 int dictRelease (scalar_t__) ;
 int sdsfree (int ) ;
 int zfree (TYPE_1__*) ;

void freeJob(job *j) {
    if (j == ((void*)0)) return;
    if (j->queue) decrRefCount(j->queue);
    sdsfree(j->body);
    if (j->nodes_delivered) dictRelease(j->nodes_delivered);
    if (j->nodes_confirmed) dictRelease(j->nodes_confirmed);
    zfree(j);
}
