
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err; char* errstr; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_ERR_IO ;
 int assert (int) ;
 int errno ;
 int memcpy (char*,char const*,size_t) ;
 int strerror_r (int ,char*,int) ;
 size_t strlen (char const*) ;

void __redisSetError(redisContext *c, int type, const char *str) {
    size_t len;

    c->err = type;
    if (str != ((void*)0)) {
        len = strlen(str);
        len = len < (sizeof(c->errstr)-1) ? len : (sizeof(c->errstr)-1);
        memcpy(c->errstr,str,len);
        c->errstr[len] = '\0';
    } else {

        assert(type == REDIS_ERR_IO);
        strerror_r(errno,c->errstr,sizeof(c->errstr));
    }
}
