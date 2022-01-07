
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {char* instreamid; void* ccgroup; void* language; } ;
struct TYPE_7__ {char const* cc_stream_map; int nb_ccstreams; TYPE_2__* cc_streams; } ;
typedef TYPE_1__ HLSContext ;
typedef TYPE_2__ ClosedCaptionsStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int atoi (char const*) ;
 int av_freep (char**) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 TYPE_2__* av_mallocz (int) ;
 void* av_strdup (char const*) ;
 scalar_t__ av_strstart (char*,char*,char const**) ;
 char* av_strtok (char*,char*,char**) ;

__attribute__((used)) static int parse_cc_stream_mapstring(AVFormatContext *s)
{
    HLSContext *hls = s->priv_data;
    int nb_ccstreams;
    char *p, *q, *ccstr, *keyval;
    char *saveptr1 = ((void*)0), *saveptr2 = ((void*)0);
    const char *val;
    ClosedCaptionsStream *ccs;

    p = av_strdup(hls->cc_stream_map);
    if(!p)
        return AVERROR(ENOMEM);

    q = p;
    while (av_strtok(q, " \t", &saveptr1)) {
        q = ((void*)0);
        hls->nb_ccstreams++;
    }
    av_freep(&p);

    hls->cc_streams = av_mallocz(sizeof(*hls->cc_streams) * hls->nb_ccstreams);
    if (!hls->cc_streams)
        return AVERROR(ENOMEM);

    p = hls->cc_stream_map;
    nb_ccstreams = 0;
    while (ccstr = av_strtok(p, " \t", &saveptr1)) {
        p = ((void*)0);

        if (nb_ccstreams < hls->nb_ccstreams)
            ccs = &(hls->cc_streams[nb_ccstreams++]);
        else
            return AVERROR(EINVAL);

        while (keyval = av_strtok(ccstr, ",", &saveptr2)) {
            ccstr = ((void*)0);

            if (av_strstart(keyval, "ccgroup:", &val)) {
                ccs->ccgroup = av_strdup(val);
                if (!ccs->ccgroup)
                    return AVERROR(ENOMEM);
            } else if (av_strstart(keyval, "instreamid:", &val)) {
                ccs->instreamid = av_strdup(val);
                if (!ccs->instreamid)
                    return AVERROR(ENOMEM);
            } else if (av_strstart(keyval, "language:", &val)) {
                ccs->language = av_strdup(val);
                if (!ccs->language)
                    return AVERROR(ENOMEM);
            } else {
                av_log(s, AV_LOG_ERROR, "Invalid keyval %s\n", keyval);
                return AVERROR(EINVAL);
            }
        }

        if (!ccs->ccgroup || !ccs->instreamid) {
            av_log(s, AV_LOG_ERROR, "Insufficient parameters in cc stream map string\n");
            return AVERROR(EINVAL);
        }

        if (av_strstart(ccs->instreamid, "CC", &val)) {
            if (atoi(val) < 1 || atoi(val) > 4) {
                av_log(s, AV_LOG_ERROR, "Invalid instream ID CC index %d in %s, range 1-4\n",
                       atoi(val), ccs->instreamid);
                return AVERROR(EINVAL);
            }
        } else if (av_strstart(ccs->instreamid, "SERVICE", &val)) {
            if (atoi(val) < 1 || atoi(val) > 63) {
                av_log(s, AV_LOG_ERROR, "Invalid instream ID SERVICE index %d in %s, range 1-63 \n",
                       atoi(val), ccs->instreamid);
                return AVERROR(EINVAL);
            }
        } else {
            av_log(s, AV_LOG_ERROR, "Invalid instream ID %s, supported are CCn or SERIVICEn\n",
                   ccs->instreamid);
            return AVERROR(EINVAL);
        }
    }

    return 0;
}
