
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t ridx; void* reply; TYPE_1__* fn; TYPE_3__* rstack; } ;
typedef TYPE_2__ redisReader ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_3__ redisReadTask ;
struct TYPE_10__ {void* (* createString ) (TYPE_3__*,char*,int) ;void* (* createInteger ) (TYPE_3__*,int ) ;} ;


 int REDIS_ERR ;
 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 int __redisReaderSetErrorOOM (TYPE_2__*) ;
 int moveToNextTask (TYPE_2__*) ;
 char* readLine (TYPE_2__*,int*) ;
 int readLongLong (char*) ;
 void* stub1 (TYPE_3__*,int ) ;
 void* stub2 (TYPE_3__*,char*,int) ;

__attribute__((used)) static int processLineItem(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    void *obj;
    char *p;
    int len;

    if ((p = readLine(r,&len)) != ((void*)0)) {
        if (cur->type == REDIS_REPLY_INTEGER) {
            if (r->fn && r->fn->createInteger)
                obj = r->fn->createInteger(cur,readLongLong(p));
            else
                obj = (void*)REDIS_REPLY_INTEGER;
        } else {

            if (r->fn && r->fn->createString)
                obj = r->fn->createString(cur,p,len);
            else
                obj = (void*)(size_t)(cur->type);
        }

        if (obj == ((void*)0)) {
            __redisReaderSetErrorOOM(r);
            return REDIS_ERR;
        }


        if (r->ridx == 0) r->reply = obj;
        moveToNextTask(r);
        return REDIS_OK;
    }

    return REDIS_ERR;
}
