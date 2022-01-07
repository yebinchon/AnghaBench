
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_7__ {scalar_t__ mChannelLayoutTag; scalar_t__ mChannelBitmap; } ;
typedef scalar_t__ AudioChannelLayoutTag ;
typedef TYPE_1__ AudioChannelLayout ;


 int AudioFormatGetProperty (int ,int,scalar_t__*,int *,TYPE_1__*) ;
 int AudioFormatGetPropertyInfo (int ,int,scalar_t__*,int *) ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_malloc (int ) ;
 scalar_t__ kAudioChannelLayoutTag_UseChannelBitmap ;
 scalar_t__ kAudioChannelLayoutTag_UseChannelDescriptions ;
 int kAudioFormatProperty_ChannelLayoutForBitmap ;
 int kAudioFormatProperty_ChannelLayoutForTag ;

__attribute__((used)) static AudioChannelLayout *ffat_convert_layout(AudioChannelLayout *layout, UInt32* size)
{
    AudioChannelLayoutTag tag = layout->mChannelLayoutTag;
    AudioChannelLayout *new_layout;
    if (tag == kAudioChannelLayoutTag_UseChannelDescriptions)
        return layout;
    else if (tag == kAudioChannelLayoutTag_UseChannelBitmap)
        AudioFormatGetPropertyInfo(kAudioFormatProperty_ChannelLayoutForBitmap,
                                   sizeof(UInt32), &layout->mChannelBitmap, size);
    else
        AudioFormatGetPropertyInfo(kAudioFormatProperty_ChannelLayoutForTag,
                                   sizeof(AudioChannelLayoutTag), &tag, size);
    new_layout = av_malloc(*size);
    if (!new_layout) {
        av_free(layout);
        return ((void*)0);
    }
    if (tag == kAudioChannelLayoutTag_UseChannelBitmap)
        AudioFormatGetProperty(kAudioFormatProperty_ChannelLayoutForBitmap,
                               sizeof(UInt32), &layout->mChannelBitmap, size, new_layout);
    else
        AudioFormatGetProperty(kAudioFormatProperty_ChannelLayoutForTag,
                               sizeof(AudioChannelLayoutTag), &tag, size, new_layout);
    new_layout->mChannelLayoutTag = kAudioChannelLayoutTag_UseChannelDescriptions;
    av_free(layout);
    return new_layout;
}
