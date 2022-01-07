
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
typedef int robj ;
typedef int job ;
struct TYPE_4__ {scalar_t__ aof_state; } ;
struct TYPE_3__ {int * loadjob; } ;


 scalar_t__ AOF_OFF ;
 int OBJ_STRING ;
 int SER_STORAGE ;
 int * createObject (int ,int ) ;
 int decrRefCount (int *) ;
 int feedAppendOnlyFile (int **,int) ;
 int sdsempty () ;
 int serializeJob (int ,int *,int ) ;
 TYPE_2__ server ;
 TYPE_1__ shared ;

void AOFLoadJob(job *job) {
    if (server.aof_state == AOF_OFF) return;

    sds serialized = serializeJob(sdsempty(),job,SER_STORAGE);
    robj *serobj = createObject(OBJ_STRING,serialized);
    robj *argv[2] = {shared.loadjob, serobj};
    feedAppendOnlyFile(argv,2);
    decrRefCount(serobj);
}
