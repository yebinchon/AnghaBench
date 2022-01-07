
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int job ;
struct TYPE_2__ {scalar_t__ aof_state; } ;


 int AOFDelJob (int *) ;
 scalar_t__ AOF_OFF ;
 TYPE_1__ server ;

void AOFAckJob(job *job) {
    if (server.aof_state == AOF_OFF) return;
    AOFDelJob(job);
}
