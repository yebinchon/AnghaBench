
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mfxStatus ;
typedef int mfxSession ;
struct TYPE_3__ {scalar_t__ Data; } ;
typedef TYPE_1__ mfxPluginUID ;
typedef int errorbuf ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ MFXVideoUSER_Load (int ,TYPE_1__*,int) ;
 int av_freep (char**) ;
 char* av_get_token (char const**,char*) ;
 int av_log (void*,int ,char*) ;
 int ff_qsv_print_error (void*,scalar_t__,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int sscanf (char*,char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static int qsv_load_plugins(mfxSession session, const char *load_plugins,
                            void *logctx)
{
    if (!load_plugins || !*load_plugins)
        return 0;

    while (*load_plugins) {
        mfxPluginUID uid;
        mfxStatus ret;
        int i, err = 0;

        char *plugin = av_get_token(&load_plugins, ":");
        if (!plugin)
            return AVERROR(ENOMEM);
        if (strlen(plugin) != 2 * sizeof(uid.Data)) {
            av_log(logctx, AV_LOG_ERROR, "Invalid plugin UID length\n");
            err = AVERROR(EINVAL);
            goto load_plugin_fail;
        }

        for (i = 0; i < sizeof(uid.Data); i++) {
            err = sscanf(plugin + 2 * i, "%2hhx", uid.Data + i);
            if (err != 1) {
                av_log(logctx, AV_LOG_ERROR, "Invalid plugin UID\n");
                err = AVERROR(EINVAL);
                goto load_plugin_fail;
            }

        }

        ret = MFXVideoUSER_Load(session, &uid, 1);
        if (ret < 0) {
            char errorbuf[128];
            snprintf(errorbuf, sizeof(errorbuf),
                     "Could not load the requested plugin '%s'", plugin);
            err = ff_qsv_print_error(logctx, ret, errorbuf);
            goto load_plugin_fail;
        }

        if (*load_plugins)
            load_plugins++;
load_plugin_fail:
        av_freep(&plugin);
        if (err < 0)
            return err;
    }

    return 0;

}
