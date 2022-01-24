#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {char* instreamid; void* ccgroup; void* language; } ;
struct TYPE_7__ {char const* cc_stream_map; int nb_ccstreams; TYPE_2__* cc_streams; } ;
typedef  TYPE_1__ HLSContext ;
typedef  TYPE_2__ ClosedCaptionsStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC4 (int) ; 
 void* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char*,char const**) ; 
 char* FUNC7 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    HLSContext *hls = s->priv_data;
    int nb_ccstreams;
    char *p, *q, *ccstr, *keyval;
    char *saveptr1 = NULL, *saveptr2 = NULL;
    const char *val;
    ClosedCaptionsStream *ccs;

    p = FUNC5(hls->cc_stream_map);
    if(!p)
        return FUNC0(ENOMEM);

    q = p;
    while (FUNC7(q, " \t", &saveptr1)) {
        q = NULL;
        hls->nb_ccstreams++;
    }
    FUNC2(&p);

    hls->cc_streams = FUNC4(sizeof(*hls->cc_streams) * hls->nb_ccstreams);
    if (!hls->cc_streams)
        return FUNC0(ENOMEM);

    p = hls->cc_stream_map;
    nb_ccstreams = 0;
    while ((ccstr = FUNC7(p, " \t", &saveptr1))) {
        p = NULL;

        if (nb_ccstreams < hls->nb_ccstreams)
            ccs = &(hls->cc_streams[nb_ccstreams++]);
        else
            return FUNC0(EINVAL);

        while ((keyval = FUNC7(ccstr, ",", &saveptr2))) {
            ccstr = NULL;

            if (FUNC6(keyval, "ccgroup:", &val)) {
                ccs->ccgroup = FUNC5(val);
                if (!ccs->ccgroup)
                    return FUNC0(ENOMEM);
            } else if (FUNC6(keyval, "instreamid:", &val)) {
                ccs->instreamid = FUNC5(val);
                if (!ccs->instreamid)
                    return FUNC0(ENOMEM);
            } else if (FUNC6(keyval, "language:", &val)) {
                ccs->language = FUNC5(val);
                if (!ccs->language)
                    return FUNC0(ENOMEM);
            } else {
                FUNC3(s, AV_LOG_ERROR, "Invalid keyval %s\n", keyval);
                return FUNC0(EINVAL);
            }
        }

        if (!ccs->ccgroup || !ccs->instreamid) {
            FUNC3(s, AV_LOG_ERROR, "Insufficient parameters in cc stream map string\n");
            return FUNC0(EINVAL);
        }

        if (FUNC6(ccs->instreamid, "CC", &val)) {
            if (FUNC1(val) < 1 || FUNC1(val) > 4) {
                FUNC3(s, AV_LOG_ERROR, "Invalid instream ID CC index %d in %s, range 1-4\n",
                       FUNC1(val), ccs->instreamid);
                return FUNC0(EINVAL);
            }
        } else if (FUNC6(ccs->instreamid, "SERVICE", &val)) {
            if (FUNC1(val) < 1 || FUNC1(val) > 63) {
                FUNC3(s, AV_LOG_ERROR, "Invalid instream ID SERVICE index %d in %s, range 1-63 \n",
                       FUNC1(val), ccs->instreamid);
                return FUNC0(EINVAL);
            }
        } else {
            FUNC3(s, AV_LOG_ERROR, "Invalid instream ID %s, supported are CCn or SERIVICEn\n",
                   ccs->instreamid);
            return FUNC0(EINVAL);
        }
    }

    return 0;
}