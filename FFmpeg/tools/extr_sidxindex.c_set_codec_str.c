
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codec_id; int extradata_size; int* extradata; } ;
typedef TYPE_1__ AVCodecParameters ;




 int AV_RB16 (int*) ;
 int av_strlcatf (char*,int,char*,int,...) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static void set_codec_str(AVCodecParameters *codecpar, char *str, int size)
{
    switch (codecpar->codec_id) {
    case 128:
        snprintf(str, size, "avc1");
        if (codecpar->extradata_size >= 4 && codecpar->extradata[0] == 1) {
            av_strlcatf(str, size, ".%02x%02x%02x",
                        codecpar->extradata[1], codecpar->extradata[2],
                        codecpar->extradata[3]);
        }
        break;
    case 129:
        snprintf(str, size, "mp4a.40");
        if (codecpar->extradata_size >= 2) {
            int aot = codecpar->extradata[0] >> 3;
            if (aot == 31)
                aot = ((AV_RB16(codecpar->extradata) >> 5) & 0x3f) + 32;
            av_strlcatf(str, size, ".%d", aot);
        }
        break;
    }
}
