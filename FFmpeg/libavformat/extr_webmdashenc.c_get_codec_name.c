
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_codec_name(int codec_id)
{
    switch (codec_id) {
        case 129:
            return "vp8";
        case 128:
            return "vp9";
        case 130:
            return "vorbis";
        case 131:
            return "opus";
    }
    return ((void*)0);
}
