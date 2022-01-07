
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int place ;
typedef int key2 ;
typedef float int32_t ;
typedef int buf ;
struct TYPE_5__ {int metadata; int event_flags; } ;
struct TYPE_4__ {TYPE_3__* fc; } ;
typedef TYPE_1__ MOVContext ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AVFMT_EVENT_FLAG_METADATA_UPDATED ;
 int AV_LOG_ERROR ;
 int av_dict_set (int *,char const*,char*,int ) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_strlcatf (char*,int,char*,...) ;
 scalar_t__ avio_get_str (int *,unsigned int,char*,int) ;
 int avio_rb16 (int *) ;
 scalar_t__ avio_rb32 (int *) ;
 int avio_skip (int *,int) ;
 int ff_mov_lang_to_iso639 (int ,char*) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int mov_metadata_loci(MOVContext *c, AVIOContext *pb, unsigned len)
{
    char language[4] = { 0 };
    char buf[200], place[100];
    uint16_t langcode = 0;
    double longitude, latitude, altitude;
    const char *key = "location";

    if (len < 4 + 2 + 1 + 1 + 4 + 4 + 4) {
        av_log(c->fc, AV_LOG_ERROR, "loci too short\n");
        return AVERROR_INVALIDDATA;
    }

    avio_skip(pb, 4);
    langcode = avio_rb16(pb);
    ff_mov_lang_to_iso639(langcode, language);
    len -= 6;

    len -= avio_get_str(pb, len, place, sizeof(place));
    if (len < 1) {
        av_log(c->fc, AV_LOG_ERROR, "place name too long\n");
        return AVERROR_INVALIDDATA;
    }
    avio_skip(pb, 1);
    len -= 1;

    if (len < 12) {
        av_log(c->fc, AV_LOG_ERROR,
               "loci too short (%u bytes left, need at least %d)\n", len, 12);
        return AVERROR_INVALIDDATA;
    }
    longitude = ((int32_t) avio_rb32(pb)) / (float) (1 << 16);
    latitude = ((int32_t) avio_rb32(pb)) / (float) (1 << 16);
    altitude = ((int32_t) avio_rb32(pb)) / (float) (1 << 16);


    snprintf(buf, sizeof(buf), "%+08.4f%+09.4f", latitude, longitude);
    if (altitude)
        av_strlcatf(buf, sizeof(buf), "%+f", altitude);
    av_strlcatf(buf, sizeof(buf), "/%s", place);

    if (*language && strcmp(language, "und")) {
        char key2[16];
        snprintf(key2, sizeof(key2), "%s-%s", key, language);
        av_dict_set(&c->fc->metadata, key2, buf, 0);
    }
    c->fc->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    return av_dict_set(&c->fc->metadata, key, buf, 0);
}
