
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int speex_quality ;


 int ConfigGetParamBool (int ,char*) ;
 void* ConfigGetParamInt (int ,char*) ;
 char* ConfigGetParamString (int ,char*) ;
 int DebugMessage (int ,char*,...) ;
 void* GameFreq ;
 int M64MSG_WARNING ;
 void* PrimaryBufferSize ;
 void* PrimaryBufferTarget ;
 int RESAMPLER_SPEEX ;
 int RESAMPLER_SRC ;
 int RESAMPLER_TRIVIAL ;
 int Resample ;
 int ResampleQuality ;
 int SRC_LINEAR ;
 int SRC_SINC_BEST_QUALITY ;
 int SRC_SINC_FASTEST ;
 int SRC_SINC_MEDIUM_QUALITY ;
 int SRC_ZERO_ORDER_HOLD ;
 void* SecondaryBufferSize ;
 int SwapChannels ;
 void* VolDelta ;
 void* VolPercent ;
 void* VolumeControlType ;
 int l_ConfigAudio ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void ReadConfig(void)
{
    const char *resampler_id;


    GameFreq = ConfigGetParamInt(l_ConfigAudio, "DEFAULT_FREQUENCY");
    SwapChannels = ConfigGetParamBool(l_ConfigAudio, "SWAP_CHANNELS");
    PrimaryBufferSize = ConfigGetParamInt(l_ConfigAudio, "PRIMARY_BUFFER_SIZE");
    PrimaryBufferTarget = ConfigGetParamInt(l_ConfigAudio, "PRIMARY_BUFFER_TARGET");
    SecondaryBufferSize = ConfigGetParamInt(l_ConfigAudio, "SECONDARY_BUFFER_SIZE");
    resampler_id = ConfigGetParamString(l_ConfigAudio, "RESAMPLE");
    VolumeControlType = ConfigGetParamInt(l_ConfigAudio, "VOLUME_CONTROL_TYPE");
    VolDelta = ConfigGetParamInt(l_ConfigAudio, "VOLUME_ADJUST");
    VolPercent = ConfigGetParamInt(l_ConfigAudio, "VOLUME_DEFAULT");

    if (!resampler_id) {
        Resample = RESAMPLER_TRIVIAL;
 DebugMessage(M64MSG_WARNING, "Could not find RESAMPLE configuration; use trivial resampler");
 return;
    }
    if (strcmp(resampler_id, "trivial") == 0) {
        Resample = RESAMPLER_TRIVIAL;
        return;
    }
    DebugMessage(M64MSG_WARNING, "Unknown RESAMPLE configuration %s; use trivial resampler", resampler_id);
    Resample = RESAMPLER_TRIVIAL;
}
