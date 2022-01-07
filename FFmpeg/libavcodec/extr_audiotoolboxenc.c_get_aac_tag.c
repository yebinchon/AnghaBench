
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
 int kAudioChannelLayoutTag_AAC_3_0 ;
 int kAudioChannelLayoutTag_AAC_4_0 ;
 int kAudioChannelLayoutTag_AAC_5_0 ;
 int kAudioChannelLayoutTag_AAC_5_1 ;
 int kAudioChannelLayoutTag_AAC_6_0 ;
 int kAudioChannelLayoutTag_AAC_6_1 ;
 int kAudioChannelLayoutTag_AAC_7_0 ;
 int kAudioChannelLayoutTag_AAC_7_1 ;
 int kAudioChannelLayoutTag_AAC_Octagonal ;
 int kAudioChannelLayoutTag_AAC_Quadraphonic ;
 int kAudioChannelLayoutTag_MPEG_7_1_C ;
 int kAudioChannelLayoutTag_Mono ;
 int kAudioChannelLayoutTag_Stereo ;

__attribute__((used)) static int get_aac_tag(uint64_t in_layout)
{
    switch (in_layout) {
    case 132:
        return kAudioChannelLayoutTag_Mono;
    case 129:
        return kAudioChannelLayoutTag_Stereo;
    case 130:
        return kAudioChannelLayoutTag_AAC_Quadraphonic;
    case 131:
        return kAudioChannelLayoutTag_AAC_Octagonal;
    case 128:
        return kAudioChannelLayoutTag_AAC_3_0;
    case 140:
        return kAudioChannelLayoutTag_AAC_4_0;
    case 139:
        return kAudioChannelLayoutTag_AAC_5_0;
    case 138:
        return kAudioChannelLayoutTag_AAC_5_1;
    case 137:
        return kAudioChannelLayoutTag_AAC_6_0;
    case 136:
        return kAudioChannelLayoutTag_AAC_6_1;
    case 135:
        return kAudioChannelLayoutTag_AAC_7_0;
    case 133:
        return kAudioChannelLayoutTag_AAC_7_1;
    case 134:
        return kAudioChannelLayoutTag_MPEG_7_1_C;
    default:
        return 0;
    }
}
