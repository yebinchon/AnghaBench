
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int channels; } ;
typedef TYPE_1__ FlacEncodeContext ;


 int AVERROR_BUG ;
 int INT_MAX ;
 int count_frame_header (TYPE_1__*) ;
 scalar_t__ encode_residual_ch (TYPE_1__*,int) ;

__attribute__((used)) static int encode_frame(FlacEncodeContext *s)
{
    int ch;
    uint64_t count;

    count = count_frame_header(s);

    for (ch = 0; ch < s->channels; ch++)
        count += encode_residual_ch(s, ch);

    count += (8 - (count & 7)) & 7;
    count += 16;

    count >>= 3;
    if (count > INT_MAX)
        return AVERROR_BUG;
    return count;
}
