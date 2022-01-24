#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp_filename ;
typedef  int /*<<< orphan*/  filename ;
struct TYPE_13__ {char* url; int (* io_open ) (TYPE_4__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_12__ {int nb_streams; TYPE_2__* streams; } ;
struct TYPE_11__ {double last_ts; int bitrate; int /*<<< orphan*/  metadata_size; int /*<<< orphan*/  metadata; } ;
struct TYPE_10__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ HDSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC6 (int) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int FUNC11 (char*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*) ; 
 int FUNC13 (TYPE_4__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s, int final)
{
    HDSContext *c = s->priv_data;
    AVIOContext *out;
    char filename[1024], temp_filename[1024];
    int ret, i;
    double duration = 0;

    if (c->nb_streams > 0)
        duration = c->streams[0].last_ts * FUNC7(s->streams[0]->time_base);

    FUNC12(filename, sizeof(filename), "%s/index.f4m", s->url);
    FUNC12(temp_filename, sizeof(temp_filename), "%s/index.f4m.tmp", s->url);
    ret = s->io_open(s, &out, temp_filename, AVIO_FLAG_WRITE, NULL);
    if (ret < 0) {
        FUNC5(s, AV_LOG_ERROR, "Unable to open %s for writing\n", temp_filename);
        return ret;
    }
    FUNC9(out, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
    FUNC9(out, "<manifest xmlns=\"http://ns.adobe.com/f4m/1.0\">\n");
    FUNC9(out, "\t<id>%s</id>\n", FUNC3(s->url));
    FUNC9(out, "\t<streamType>%s</streamType>\n",
                     final ? "recorded" : "live");
    FUNC9(out, "\t<deliveryType>streaming</deliveryType>\n");
    if (final)
        FUNC9(out, "\t<duration>%f</duration>\n", duration);
    for (i = 0; i < c->nb_streams; i++) {
        OutputStream *os = &c->streams[i];
        int b64_size = FUNC1(os->metadata_size);
        char *base64 = FUNC6(b64_size);
        if (!base64) {
            FUNC10(s, &out);
            return FUNC0(ENOMEM);
        }
        FUNC2(base64, b64_size, os->metadata, os->metadata_size);

        FUNC9(out, "\t<bootstrapInfo profile=\"named\" url=\"stream%d.abst\" id=\"bootstrap%d\" />\n", i, i);
        FUNC9(out, "\t<media bitrate=\"%d\" url=\"stream%d\" bootstrapInfoId=\"bootstrap%d\">\n", os->bitrate/1000, i, i);
        FUNC9(out, "\t\t<metadata>%s</metadata>\n", base64);
        FUNC9(out, "\t</media>\n");
        FUNC4(base64);
    }
    FUNC9(out, "</manifest>\n");
    FUNC8(out);
    FUNC10(s, &out);
    return FUNC11(temp_filename, filename, s);
}