
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct timeval {int member_1; int member_0; } ;
struct config {int dummy; } ;
struct TYPE_10__ {int str; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_11__ {scalar_t__ err; int errstr; } ;
typedef TYPE_2__ redisContext ;


 scalar_t__ EAGAIN ;
 scalar_t__ REDIS_ERR ;
 scalar_t__ REDIS_ERR_EOF ;
 scalar_t__ REDIS_ERR_IO ;
 scalar_t__ REDIS_OK ;
 int assert (int) ;
 TYPE_2__* connect (struct config) ;
 scalar_t__ errno ;
 int freeReplyObject (TYPE_1__*) ;
 TYPE_1__* redisCommand (TYPE_2__*,char*) ;
 int redisFree (TYPE_2__*) ;
 scalar_t__ redisGetReply (TYPE_2__*,void**) ;
 scalar_t__ redisSetTimeout (TYPE_2__*,struct timeval) ;
 scalar_t__ strcasecmp (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char const*) ;
 char* strstr (int ,char const*) ;
 int strtol (char*,char**,int) ;
 int test (char*) ;
 int test_cond (int) ;

__attribute__((used)) static void test_blocking_io_errors(struct config config) {
    redisContext *c;
    redisReply *reply;
    void *_reply;
    int major, minor;


    c = connect(config);
    {

        const char *field = "redis_version:";
        char *p, *eptr;

        reply = redisCommand(c,"INFO");
        p = strstr(reply->str,field);
        major = strtol(p+strlen(field),&eptr,10);
        p = eptr+1;
        minor = strtol(p,&eptr,10);
        freeReplyObject(reply);
    }

    test("Returns I/O error when the connection is lost: ");
    reply = redisCommand(c,"QUIT");
    if (major >= 2 && minor > 0) {


        test_cond(strcasecmp(reply->str,"OK") == 0 &&
            redisGetReply(c,&_reply) == REDIS_ERR);
        freeReplyObject(reply);
    } else {
        test_cond(reply == ((void*)0));
    }






    assert(c->err == REDIS_ERR_EOF &&
        strcmp(c->errstr,"Server closed the connection") == 0);
    redisFree(c);

    c = connect(config);
    test("Returns I/O error on socket timeout: ");
    struct timeval tv = { 0, 1000 };
    assert(redisSetTimeout(c,tv) == REDIS_OK);
    test_cond(redisGetReply(c,&_reply) == REDIS_ERR &&
        c->err == REDIS_ERR_IO && errno == EAGAIN);
    redisFree(c);
}
