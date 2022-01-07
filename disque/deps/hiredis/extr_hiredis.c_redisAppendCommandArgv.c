
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;


 int REDIS_ERR ;
 int REDIS_ERR_OOM ;
 scalar_t__ REDIS_OK ;
 scalar_t__ __redisAppendCommand (int *,char*,int) ;
 int __redisSetError (int *,int ,char*) ;
 int free (char*) ;
 int redisFormatCommandArgv (char**,int,char const**,size_t const*) ;

int redisAppendCommandArgv(redisContext *c, int argc, const char **argv, const size_t *argvlen) {
    char *cmd;
    int len;

    len = redisFormatCommandArgv(&cmd,argc,argv,argvlen);
    if (len == -1) {
        __redisSetError(c,REDIS_ERR_OOM,"Out of memory");
        return REDIS_ERR;
    }

    if (__redisAppendCommand(c,cmd,len) != REDIS_OK) {
        free(cmd);
        return REDIS_ERR;
    }

    free(cmd);
    return REDIS_OK;
}
