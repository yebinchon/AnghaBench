
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ getParameterSetAtIndex ;
struct TYPE_2__ {scalar_t__ CMVideoFormatDescriptionGetHEVCParameterSetAtIndex; } ;


 int GET_SYM (int ,char*) ;
 int RTLD_DEFAULT ;
 TYPE_1__ compat_keys ;
 scalar_t__ dlsym (int ,char*) ;
 int kCVImageBufferColorPrimaries_ITU_R_2020 ;
 int kCVImageBufferTransferFunction_ITU_R_2020 ;
 int kCVImageBufferYCbCrMatrix_ITU_R_2020 ;
 int kVTCompressionPropertyKey_H264EntropyMode ;
 int kVTCompressionPropertyKey_RealTime ;
 int kVTH264EntropyMode_CABAC ;
 int kVTH264EntropyMode_CAVLC ;
 int kVTProfileLevel_H264_Baseline_4_0 ;
 int kVTProfileLevel_H264_Baseline_4_2 ;
 int kVTProfileLevel_H264_Baseline_5_0 ;
 int kVTProfileLevel_H264_Baseline_5_1 ;
 int kVTProfileLevel_H264_Baseline_5_2 ;
 int kVTProfileLevel_H264_Baseline_AutoLevel ;
 int kVTProfileLevel_H264_Extended_5_0 ;
 int kVTProfileLevel_H264_Extended_AutoLevel ;
 int kVTProfileLevel_H264_High_3_0 ;
 int kVTProfileLevel_H264_High_3_1 ;
 int kVTProfileLevel_H264_High_3_2 ;
 int kVTProfileLevel_H264_High_4_0 ;
 int kVTProfileLevel_H264_High_4_1 ;
 int kVTProfileLevel_H264_High_4_2 ;
 int kVTProfileLevel_H264_High_5_1 ;
 int kVTProfileLevel_H264_High_5_2 ;
 int kVTProfileLevel_H264_High_AutoLevel ;
 int kVTProfileLevel_H264_Main_4_2 ;
 int kVTProfileLevel_H264_Main_5_1 ;
 int kVTProfileLevel_H264_Main_5_2 ;
 int kVTProfileLevel_H264_Main_AutoLevel ;
 int kVTProfileLevel_HEVC_Main10_AutoLevel ;
 int kVTProfileLevel_HEVC_Main_AutoLevel ;
 int kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoder ;
 int kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoder ;

__attribute__((used)) static void loadVTEncSymbols(){
    compat_keys.CMVideoFormatDescriptionGetHEVCParameterSetAtIndex =
        (getParameterSetAtIndex)dlsym(
            RTLD_DEFAULT,
            "CMVideoFormatDescriptionGetHEVCParameterSetAtIndex"
        );

    GET_SYM(kCVImageBufferColorPrimaries_ITU_R_2020, "ITU_R_2020");
    GET_SYM(kCVImageBufferTransferFunction_ITU_R_2020, "ITU_R_2020");
    GET_SYM(kCVImageBufferYCbCrMatrix_ITU_R_2020, "ITU_R_2020");

    GET_SYM(kVTCompressionPropertyKey_H264EntropyMode, "H264EntropyMode");
    GET_SYM(kVTH264EntropyMode_CAVLC, "CAVLC");
    GET_SYM(kVTH264EntropyMode_CABAC, "CABAC");

    GET_SYM(kVTProfileLevel_H264_Baseline_4_0, "H264_Baseline_4_0");
    GET_SYM(kVTProfileLevel_H264_Baseline_4_2, "H264_Baseline_4_2");
    GET_SYM(kVTProfileLevel_H264_Baseline_5_0, "H264_Baseline_5_0");
    GET_SYM(kVTProfileLevel_H264_Baseline_5_1, "H264_Baseline_5_1");
    GET_SYM(kVTProfileLevel_H264_Baseline_5_2, "H264_Baseline_5_2");
    GET_SYM(kVTProfileLevel_H264_Baseline_AutoLevel, "H264_Baseline_AutoLevel");
    GET_SYM(kVTProfileLevel_H264_Main_4_2, "H264_Main_4_2");
    GET_SYM(kVTProfileLevel_H264_Main_5_1, "H264_Main_5_1");
    GET_SYM(kVTProfileLevel_H264_Main_5_2, "H264_Main_5_2");
    GET_SYM(kVTProfileLevel_H264_Main_AutoLevel, "H264_Main_AutoLevel");
    GET_SYM(kVTProfileLevel_H264_High_3_0, "H264_High_3_0");
    GET_SYM(kVTProfileLevel_H264_High_3_1, "H264_High_3_1");
    GET_SYM(kVTProfileLevel_H264_High_3_2, "H264_High_3_2");
    GET_SYM(kVTProfileLevel_H264_High_4_0, "H264_High_4_0");
    GET_SYM(kVTProfileLevel_H264_High_4_1, "H264_High_4_1");
    GET_SYM(kVTProfileLevel_H264_High_4_2, "H264_High_4_2");
    GET_SYM(kVTProfileLevel_H264_High_5_1, "H264_High_5_1");
    GET_SYM(kVTProfileLevel_H264_High_5_2, "H264_High_5_2");
    GET_SYM(kVTProfileLevel_H264_High_AutoLevel, "H264_High_AutoLevel");
    GET_SYM(kVTProfileLevel_H264_Extended_5_0, "H264_Extended_5_0");
    GET_SYM(kVTProfileLevel_H264_Extended_AutoLevel, "H264_Extended_AutoLevel");

    GET_SYM(kVTProfileLevel_HEVC_Main_AutoLevel, "HEVC_Main_AutoLevel");
    GET_SYM(kVTProfileLevel_HEVC_Main10_AutoLevel, "HEVC_Main10_AutoLevel");

    GET_SYM(kVTCompressionPropertyKey_RealTime, "RealTime");

    GET_SYM(kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoder,
            "EnableHardwareAcceleratedVideoEncoder");
    GET_SYM(kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoder,
            "RequireHardwareAcceleratedVideoEncoder");
}
