
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int x264_build; } ;
typedef TYPE_1__ H264SEIUnregistered ;
typedef int GetBitContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 int INT_MAX ;
 int av_free (scalar_t__*) ;
 scalar_t__* av_malloc (int) ;
 scalar_t__ get_bits (int *,int) ;
 int sscanf (scalar_t__*,char*,int*) ;
 int strncmp (scalar_t__*,char*,int) ;

__attribute__((used)) static int decode_unregistered_user_data(H264SEIUnregistered *h, GetBitContext *gb,
                                         void *logctx, int size)
{
    uint8_t *user_data;
    int e, build, i;

    if (size < 16 || size >= INT_MAX - 16)
        return AVERROR_INVALIDDATA;

    user_data = av_malloc(16 + size + 1);
    if (!user_data)
        return AVERROR(ENOMEM);

    for (i = 0; i < size + 16; i++)
        user_data[i] = get_bits(gb, 8);

    user_data[i] = 0;
    e = sscanf(user_data + 16, "x264 - core %d", &build);
    if (e == 1 && build > 0)
        h->x264_build = build;
    if (e == 1 && build == 1 && !strncmp(user_data+16, "x264 - core 0000", 16))
        h->x264_build = 67;

    av_free(user_data);
    return 0;
}
