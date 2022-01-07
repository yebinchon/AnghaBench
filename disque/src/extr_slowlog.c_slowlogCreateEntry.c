
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int argc; long long duration; scalar_t__ id; int time; TYPE_2__** argv; } ;
typedef TYPE_1__ slowlogEntry ;
typedef int sds ;
struct TYPE_9__ {scalar_t__ type; int ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_10__ {int slowlog_entry_id; } ;


 scalar_t__ OBJ_STRING ;
 int SLOWLOG_ENTRY_MAX_ARGC ;
 unsigned long SLOWLOG_ENTRY_MAX_STRING ;
 void* createObject (scalar_t__,int ) ;
 int incrRefCount (TYPE_2__*) ;
 scalar_t__ sdsEncodedObject (TYPE_2__*) ;
 int sdscatprintf (int ,char*,unsigned long) ;
 int sdsempty () ;
 unsigned long sdslen (int ) ;
 int sdsnewlen (int ,unsigned long) ;
 TYPE_5__ server ;
 int time (int *) ;
 void* zmalloc (int) ;

slowlogEntry *slowlogCreateEntry(robj **argv, int argc, long long duration) {
    slowlogEntry *se = zmalloc(sizeof(*se));
    int j, slargc = argc;

    if (slargc > SLOWLOG_ENTRY_MAX_ARGC) slargc = SLOWLOG_ENTRY_MAX_ARGC;
    se->argc = slargc;
    se->argv = zmalloc(sizeof(robj*)*slargc);
    for (j = 0; j < slargc; j++) {



        if (slargc != argc && j == slargc-1) {
            se->argv[j] = createObject(OBJ_STRING,
                sdscatprintf(sdsempty(),"... (%d more arguments)",
                argc-slargc+1));
        } else {

            if (argv[j]->type == OBJ_STRING &&
                sdsEncodedObject(argv[j]) &&
                sdslen(argv[j]->ptr) > SLOWLOG_ENTRY_MAX_STRING)
            {
                sds s = sdsnewlen(argv[j]->ptr, SLOWLOG_ENTRY_MAX_STRING);

                s = sdscatprintf(s,"... (%lu more bytes)",
                    (unsigned long)
                    sdslen(argv[j]->ptr) - SLOWLOG_ENTRY_MAX_STRING);
                se->argv[j] = createObject(OBJ_STRING,s);
            } else {
                se->argv[j] = argv[j];
                incrRefCount(argv[j]);
            }
        }
    }
    se->time = time(((void*)0));
    se->duration = duration;
    se->id = server.slowlog_entry_id++;
    return se;
}
