
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {char* value; } ;
typedef int AVIOContext ;
typedef int AVFormatContext ;
typedef TYPE_1__ AVDictionaryEntry ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,scalar_t__) ;
 int avio_write (int *,char const*,scalar_t__) ;
 int ffio_wfourcc (int *,char*) ;
 TYPE_1__* get_metadata_lang (int *,char*,int*) ;
 scalar_t__ strlen (char const*) ;
 double strtod (char const*,char**) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_loci_tag(AVFormatContext *s, AVIOContext *pb)
{
    int lang;
    int64_t pos = avio_tell(pb);
    double latitude, longitude, altitude;
    int32_t latitude_fix, longitude_fix, altitude_fix;
    AVDictionaryEntry *t = get_metadata_lang(s, "location", &lang);
    const char *ptr, *place = "";
    char *end;
    static const char *astronomical_body = "earth";
    if (!t)
        return 0;

    ptr = t->value;
    longitude = strtod(ptr, &end);
    if (end == ptr) {
        av_log(s, AV_LOG_WARNING, "malformed location metadata\n");
        return 0;
    }
    ptr = end;
    latitude = strtod(ptr, &end);
    if (end == ptr) {
        av_log(s, AV_LOG_WARNING, "malformed location metadata\n");
        return 0;
    }
    ptr = end;
    altitude = strtod(ptr, &end);

    if (*end == '/')
        place = end + 1;

    latitude_fix = (int32_t) ((1 << 16) * latitude);
    longitude_fix = (int32_t) ((1 << 16) * longitude);
    altitude_fix = (int32_t) ((1 << 16) * altitude);

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "loci");
    avio_wb32(pb, 0);
    avio_wb16(pb, lang);
    avio_write(pb, place, strlen(place) + 1);
    avio_w8(pb, 0);
    avio_wb32(pb, latitude_fix);
    avio_wb32(pb, longitude_fix);
    avio_wb32(pb, altitude_fix);
    avio_write(pb, astronomical_body, strlen(astronomical_body) + 1);
    avio_w8(pb, 0);

    return update_size(pb, pos);
}
