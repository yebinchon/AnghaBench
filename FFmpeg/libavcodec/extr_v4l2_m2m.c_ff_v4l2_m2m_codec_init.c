
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dirent {char* d_name; } ;
typedef int node ;
struct TYPE_7__ {TYPE_2__* context; } ;
typedef TYPE_1__ V4L2m2mPriv ;
struct TYPE_8__ {int devname; } ;
typedef TYPE_2__ V4L2m2mContext ;
typedef int DIR ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int EINVAL ;
 int PATH_MAX ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int closedir (int *) ;
 int errno ;
 int memset (int ,int ,int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (int ,char*,scalar_t__) ;
 int v4l2_configure_contexts (TYPE_2__*) ;
 int v4l2_probe_driver (TYPE_2__*) ;

int ff_v4l2_m2m_codec_init(V4L2m2mPriv *priv)
{
    int ret = AVERROR(EINVAL);
    struct dirent *entry;
    char node[PATH_MAX];
    DIR *dirp;

    V4L2m2mContext *s = priv->context;

    dirp = opendir("/dev");
    if (!dirp)
        return AVERROR(errno);

    for (entry = readdir(dirp); entry; entry = readdir(dirp)) {

        if (strncmp(entry->d_name, "video", 5))
            continue;

        snprintf(node, sizeof(node), "/dev/%s", entry->d_name);
        av_log(priv, AV_LOG_DEBUG, "probing device %s\n", node);
        strncpy(s->devname, node, strlen(node) + 1);
        ret = v4l2_probe_driver(s);
        if (!ret)
            break;
    }

    closedir(dirp);

    if (ret) {
        av_log(priv, AV_LOG_ERROR, "Could not find a valid device\n");
        memset(s->devname, 0, sizeof(s->devname));

        return ret;
    }

    av_log(priv, AV_LOG_INFO, "Using device %s\n", node);

    return v4l2_configure_contexts(s);
}
