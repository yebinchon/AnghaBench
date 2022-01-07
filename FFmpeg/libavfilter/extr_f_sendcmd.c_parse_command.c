
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int flag_buf ;
struct TYPE_4__ {int index; int * arg; int * command; int * target; int flags; } ;
typedef TYPE_1__ Command ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int COMMAND_DELIMS ;
 int COMMAND_FLAG_ENTER ;
 int COMMAND_FLAG_LEAVE ;
 int EINVAL ;
 char* SPACES ;
 int av_freep (int **) ;
 void* av_get_token (char const**,int ) ;
 int av_log (void*,int ,char*,...) ;
 int av_strlcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int strcspn (char const*,char*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int parse_command(Command *cmd, int cmd_count, int interval_count,
                         const char **buf, void *log_ctx)
{
    int ret;

    memset(cmd, 0, sizeof(Command));
    cmd->index = cmd_count;


    *buf += strspn(*buf, SPACES);


    if (**buf == '[') {
        (*buf)++;

        while (**buf) {
            int len = strcspn(*buf, "|+]");

            if (!strncmp(*buf, "enter", strlen("enter"))) cmd->flags |= COMMAND_FLAG_ENTER;
            else if (!strncmp(*buf, "leave", strlen("leave"))) cmd->flags |= COMMAND_FLAG_LEAVE;
            else {
                char flag_buf[64];
                av_strlcpy(flag_buf, *buf, sizeof(flag_buf));
                av_log(log_ctx, AV_LOG_ERROR,
                       "Unknown flag '%s' in interval #%d, command #%d\n",
                       flag_buf, interval_count, cmd_count);
                return AVERROR(EINVAL);
            }
            *buf += len;
            if (**buf == ']')
                break;
            if (!strspn(*buf, "+|")) {
                av_log(log_ctx, AV_LOG_ERROR,
                       "Invalid flags char '%c' in interval #%d, command #%d\n",
                       **buf, interval_count, cmd_count);
                return AVERROR(EINVAL);
            }
            if (**buf)
                (*buf)++;
        }

        if (**buf != ']') {
            av_log(log_ctx, AV_LOG_ERROR,
                   "Missing flag terminator or extraneous data found at the end of flags "
                   "in interval #%d, command #%d\n", interval_count, cmd_count);
            return AVERROR(EINVAL);
        }
        (*buf)++;
    } else {
        cmd->flags = COMMAND_FLAG_ENTER;
    }

    *buf += strspn(*buf, SPACES);
    cmd->target = av_get_token(buf, COMMAND_DELIMS);
    if (!cmd->target || !cmd->target[0]) {
        av_log(log_ctx, AV_LOG_ERROR,
               "No target specified in interval #%d, command #%d\n",
               interval_count, cmd_count);
        ret = AVERROR(EINVAL);
        goto fail;
    }

    *buf += strspn(*buf, SPACES);
    cmd->command = av_get_token(buf, COMMAND_DELIMS);
    if (!cmd->command || !cmd->command[0]) {
        av_log(log_ctx, AV_LOG_ERROR,
               "No command specified in interval #%d, command #%d\n",
               interval_count, cmd_count);
        ret = AVERROR(EINVAL);
        goto fail;
    }

    *buf += strspn(*buf, SPACES);
    cmd->arg = av_get_token(buf, COMMAND_DELIMS);

    return 1;

fail:
    av_freep(&cmd->target);
    av_freep(&cmd->command);
    av_freep(&cmd->arg);
    return ret;
}
