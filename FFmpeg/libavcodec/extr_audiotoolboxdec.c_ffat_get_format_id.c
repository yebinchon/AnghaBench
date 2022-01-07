
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef int UInt32 ;
 int av_assert0 (int) ;
 int kAudioFormatAC3 ;
 int kAudioFormatALaw ;
 int kAudioFormatAMR ;
 int kAudioFormatAppleIMA4 ;
 int kAudioFormatAppleLossless ;
 int kAudioFormatEnhancedAC3 ;
 int kAudioFormatMPEG4AAC ;
 int kAudioFormatMPEGLayer1 ;
 int kAudioFormatMPEGLayer2 ;
 int kAudioFormatMPEGLayer3 ;
 int kAudioFormatMicrosoftGSM ;
 int kAudioFormatQDesign ;
 int kAudioFormatQDesign2 ;
 int kAudioFormatULaw ;
 int kAudioFormatiLBC ;

__attribute__((used)) static UInt32 ffat_get_format_id(enum AVCodecID codec, int profile)
{
    switch (codec) {
    case 142:
        return kAudioFormatMPEG4AAC;
    case 141:
        return kAudioFormatAC3;
    case 140:
        return kAudioFormatAppleIMA4;
    case 139:
        return kAudioFormatAppleLossless;
    case 138:
        return kAudioFormatAMR;
    case 137:
        return kAudioFormatEnhancedAC3;
    case 136:
        return kAudioFormatMicrosoftGSM;
    case 135:
        return kAudioFormatiLBC;
    case 134:
        return kAudioFormatMPEGLayer1;
    case 133:
        return kAudioFormatMPEGLayer2;
    case 132:
        return kAudioFormatMPEGLayer3;
    case 131:
        return kAudioFormatALaw;
    case 130:
        return kAudioFormatULaw;
    case 128:
        return kAudioFormatQDesign;
    case 129:
        return kAudioFormatQDesign2;
    default:
        av_assert0(!"Invalid codec ID!");
        return 0;
    }
}
