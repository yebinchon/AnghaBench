
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int mNumberChannelDescriptions; TYPE_1__* mChannelDescriptions; int mChannelLayoutTag; } ;
struct TYPE_4__ {int mChannelLabel; } ;
typedef TYPE_2__ AudioChannelLayout ;


 int AVERROR (int ) ;
 int EINVAL ;
 int get_channel_label (int) ;
 int kAudioChannelLayoutTag_UseChannelDescriptions ;

__attribute__((used)) static int remap_layout(AudioChannelLayout *layout, uint64_t in_layout, int count)
{
    int i;
    int c = 0;
    layout->mChannelLayoutTag = kAudioChannelLayoutTag_UseChannelDescriptions;
    layout->mNumberChannelDescriptions = count;
    for (i = 0; i < count; i++) {
        int label;
        while (!(in_layout & (1 << c)) && c < 64)
            c++;
        if (c == 64)
            return AVERROR(EINVAL);
        label = get_channel_label(c);
        layout->mChannelDescriptions[i].mChannelLabel = label;
        if (label < 0)
            return AVERROR(EINVAL);
        c++;
    }
    return 0;
}
