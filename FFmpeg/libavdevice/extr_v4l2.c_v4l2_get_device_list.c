
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct video_data {int fd; } ;
struct v4l2_capability {char* card; } ;
struct dirent {char* d_name; } ;
typedef int device_name ;
struct TYPE_13__ {struct TYPE_13__* device_description; struct TYPE_13__* device_name; } ;
struct TYPE_12__ {int nb_devices; int devices; } ;
struct TYPE_11__ {struct video_data* priv_data; } ;
typedef int DIR ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDeviceInfoList ;
typedef TYPE_3__ AVDeviceInfo ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int VIDIOC_QUERYCAP ;
 int av_dynarray_add_nofree (int *,int *,TYPE_3__*) ;
 int av_err2str (int) ;
 int av_freep (TYPE_3__**) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 TYPE_3__* av_mallocz (int) ;
 void* av_strdup (char*) ;
 int closedir (int *) ;
 int device_open (TYPE_1__*,char*) ;
 int errno ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int v4l2_close (int) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_capability*) ;
 int v4l2_is_v4l_dev (char*) ;

__attribute__((used)) static int v4l2_get_device_list(AVFormatContext *ctx, AVDeviceInfoList *device_list)
{
    struct video_data *s = ctx->priv_data;
    DIR *dir;
    struct dirent *entry;
    AVDeviceInfo *device = ((void*)0);
    struct v4l2_capability cap;
    int ret = 0;

    if (!device_list)
        return AVERROR(EINVAL);

    dir = opendir("/dev");
    if (!dir) {
        ret = AVERROR(errno);
        av_log(ctx, AV_LOG_ERROR, "Couldn't open the directory: %s\n", av_err2str(ret));
        return ret;
    }
    while ((entry = readdir(dir))) {
        char device_name[256];

        if (!v4l2_is_v4l_dev(entry->d_name))
            continue;

        snprintf(device_name, sizeof(device_name), "/dev/%s", entry->d_name);
        if ((s->fd = device_open(ctx, device_name)) < 0)
            continue;

        if (v4l2_ioctl(s->fd, VIDIOC_QUERYCAP, &cap) < 0) {
            ret = AVERROR(errno);
            av_log(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_QUERYCAP): %s\n", av_err2str(ret));
            goto fail;
        }

        device = av_mallocz(sizeof(AVDeviceInfo));
        if (!device) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        device->device_name = av_strdup(device_name);
        device->device_description = av_strdup(cap.card);
        if (!device->device_name || !device->device_description) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }

        if ((ret = av_dynarray_add_nofree(&device_list->devices,
                                          &device_list->nb_devices, device)) < 0)
            goto fail;

        v4l2_close(s->fd);
        s->fd = -1;
        continue;

      fail:
        if (device) {
            av_freep(&device->device_name);
            av_freep(&device->device_description);
            av_freep(&device);
        }
        if (s->fd >= 0)
            v4l2_close(s->fd);
        s->fd = -1;
        break;
    }
    closedir(dir);
    return ret;
}
