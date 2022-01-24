#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_7__ {scalar_t__ mChannelLayoutTag; scalar_t__ mChannelBitmap; } ;
typedef  scalar_t__ AudioChannelLayoutTag ;
typedef  TYPE_1__ AudioChannelLayout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ kAudioChannelLayoutTag_UseChannelBitmap ; 
 scalar_t__ kAudioChannelLayoutTag_UseChannelDescriptions ; 
 int /*<<< orphan*/  kAudioFormatProperty_ChannelLayoutForBitmap ; 
 int /*<<< orphan*/  kAudioFormatProperty_ChannelLayoutForTag ; 

__attribute__((used)) static AudioChannelLayout *FUNC4(AudioChannelLayout *layout, UInt32* size)
{
    AudioChannelLayoutTag tag = layout->mChannelLayoutTag;
    AudioChannelLayout *new_layout;
    if (tag == kAudioChannelLayoutTag_UseChannelDescriptions)
        return layout;
    else if (tag == kAudioChannelLayoutTag_UseChannelBitmap)
        FUNC1(kAudioFormatProperty_ChannelLayoutForBitmap,
                                   sizeof(UInt32), &layout->mChannelBitmap, size);
    else
        FUNC1(kAudioFormatProperty_ChannelLayoutForTag,
                                   sizeof(AudioChannelLayoutTag), &tag, size);
    new_layout = FUNC3(*size);
    if (!new_layout) {
        FUNC2(layout);
        return NULL;
    }
    if (tag == kAudioChannelLayoutTag_UseChannelBitmap)
        FUNC0(kAudioFormatProperty_ChannelLayoutForBitmap,
                               sizeof(UInt32), &layout->mChannelBitmap, size, new_layout);
    else
        FUNC0(kAudioFormatProperty_ChannelLayoutForTag,
                               sizeof(AudioChannelLayoutTag), &tag, size, new_layout);
    new_layout->mChannelLayoutTag = kAudioChannelLayoutTag_UseChannelDescriptions;
    FUNC2(layout);
    return new_layout;
}