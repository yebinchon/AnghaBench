
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef int UInt32 ;
 int av_assert0 (int) ;
 int kAudioFormatALaw ;
 int kAudioFormatAppleIMA4 ;
 int kAudioFormatAppleLossless ;
 int kAudioFormatMPEG4AAC ;
 int kAudioFormatMPEG4AAC_ELD ;
 int kAudioFormatMPEG4AAC_HE ;
 int kAudioFormatMPEG4AAC_HE_V2 ;
 int kAudioFormatMPEG4AAC_LD ;
 int kAudioFormatULaw ;
 int kAudioFormatiLBC ;

__attribute__((used)) static UInt32 ffat_get_format_id(enum AVCodecID codec, int profile)
{
    switch (codec) {
    case 138:
        switch (profile) {
        case 128:
        default:
            return kAudioFormatMPEG4AAC;
        case 131:
            return kAudioFormatMPEG4AAC_HE;
        case 130:
            return kAudioFormatMPEG4AAC_HE_V2;
        case 129:
            return kAudioFormatMPEG4AAC_LD;
        case 132:
            return kAudioFormatMPEG4AAC_ELD;
        }
    case 137:
        return kAudioFormatAppleIMA4;
    case 136:
        return kAudioFormatAppleLossless;
    case 135:
        return kAudioFormatiLBC;
    case 134:
        return kAudioFormatALaw;
    case 133:
        return kAudioFormatULaw;
    default:
        av_assert0(!"Invalid codec ID!");
        return 0;
    }
}
