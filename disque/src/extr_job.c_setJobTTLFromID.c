
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ etime; int id; } ;
typedef TYPE_1__ job ;
struct TYPE_5__ {scalar_t__ unixtime; } ;


 int getRawTTLFromJobID (int ) ;
 TYPE_3__ server ;

void setJobTTLFromID(job *job) {
    int expire_minutes = getRawTTLFromJobID(job->id);

    job->etime = server.unixtime + expire_minutes*60;
}
