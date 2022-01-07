
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* arg; int * command; int * target; } ;
typedef TYPE_1__ Command ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int SPACES ;
 void* av_get_token (char const**,int ) ;
 int av_log (void*,int ,char*,char const*) ;

__attribute__((used)) static int parse_command(Command *cmd, const char *command_str, void *log_ctx)
{
    const char **buf = &command_str;

    cmd->target = av_get_token(buf, SPACES);
    if (!cmd->target || !cmd->target[0]) {
        av_log(log_ctx, AV_LOG_ERROR,
               "No target specified in command '%s'\n", command_str);
        return AVERROR(EINVAL);
    }

    cmd->command = av_get_token(buf, SPACES);
    if (!cmd->command || !cmd->command[0]) {
        av_log(log_ctx, AV_LOG_ERROR,
               "No command specified in command '%s'\n", command_str);
        return AVERROR(EINVAL);
    }

    cmd->arg = av_get_token(buf, SPACES);
    return 0;
}
