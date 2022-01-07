
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t ridx; TYPE_2__* rstack; } ;
typedef TYPE_1__ redisReader ;
struct TYPE_10__ {int type; } ;
typedef TYPE_2__ redisReadTask ;


 int REDIS_ERR ;





 int __redisReaderSetErrorProtocolByte (TYPE_1__*,char) ;
 int assert (int *) ;
 int processBulkItem (TYPE_1__*) ;
 int processLineItem (TYPE_1__*) ;
 int processMultiBulkItem (TYPE_1__*) ;
 char* readBytes (TYPE_1__*,int) ;

__attribute__((used)) static int processItem(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    char *p;


    if (cur->type < 0) {
        if ((p = readBytes(r,1)) != ((void*)0)) {
            switch (p[0]) {
            case '-':
                cur->type = 131;
                break;
            case '+':
                cur->type = 129;
                break;
            case ':':
                cur->type = 130;
                break;
            case '$':
                cur->type = 128;
                break;
            case '*':
                cur->type = 132;
                break;
            default:
                __redisReaderSetErrorProtocolByte(r,*p);
                return REDIS_ERR;
            }
        } else {

            return REDIS_ERR;
        }
    }


    switch(cur->type) {
    case 131:
    case 129:
    case 130:
        return processLineItem(r);
    case 128:
        return processBulkItem(r);
    case 132:
        return processMultiBulkItem(r);
    default:
        assert(((void*)0));
        return REDIS_ERR;
    }
}
