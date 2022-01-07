
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ OMX_INDEXTYPE ;
 char* mmalomx_parameter_name_omx (int ) ;

const char *mmalomx_param_to_string(OMX_INDEXTYPE param)
{
  static const struct {
    const char *string;
    const OMX_INDEXTYPE param;
  } param_to_names[] =
  {
    {"OMX_IndexParamPriorityMgmt", 139},
    {"OMX_IndexParamAudioInit", 152},
    {"OMX_IndexParamImageInit", 145},
    {"OMX_IndexParamVideoInit", 134},
    {"OMX_IndexParamOtherInit", 142},
    {"OMX_IndexParamPortDefinition", 140},
    {"OMX_IndexParamCompBufferSupplier", 147},
    {"OMX_IndexParamAudioPortFormat", 149},
    {"OMX_IndexParamVideoPortFormat", 131},
    {"OMX_IndexParamImagePortFormat", 144},
    {"OMX_IndexParamOtherPortFormat", 141},
    {"OMX_IndexParamAudioPcm", 150},
    {"OMX_IndexParamAudioAac", 153},
    {"OMX_IndexParamAudioMp3", 151},
    {"OMX_IndexParamVideoMpeg2", 133},
    {"OMX_IndexParamVideoMpeg4", 132},
    {"OMX_IndexParamVideoWmv", 128},
    {"OMX_IndexParamVideoRv", 129},
    {"OMX_IndexParamVideoAvc", 137},
    {"OMX_IndexParamVideoH263", 135},
    {"OMX_IndexParamStandardComponentRole", 138},
    {"OMX_IndexParamContentURI", 146},
    {"OMX_IndexParamCommonSensorMode", 148},
    {"OMX_IndexConfigCommonWhiteBalance", 155},
    {"OMX_IndexConfigCommonDigitalZoom", 162},
    {"OMX_IndexConfigCommonExposureValue", 161},
    {"OMX_IndexConfigCapturing", 163},
    {"OMX_IndexAutoPauseAfterCapture", 164},
    {"OMX_IndexConfigCommonRotate", 157},
    {"OMX_IndexConfigCommonMirror", 159},
    {"OMX_IndexConfigCommonScale", 156},
    {"OMX_IndexConfigCommonInputCrop", 160},
    {"OMX_IndexConfigCommonOutputCrop", 158},
    {"OMX_IndexParamNumAvailableStreams", 143},
    {"OMX_IndexParamActiveStream", 154},
    {"OMX_IndexParamVideoBitrate", 136},
    {"OMX_IndexParamVideoProfileLevelQuerySupported", 130},

    {"OMX_IndexParam unknown", (OMX_INDEXTYPE)0}
  };
  const char *name = mmalomx_parameter_name_omx((uint32_t)param);
  int i;

  if (name)
     return name;

  for(i = 0; param_to_names[i].param &&
      param_to_names[i].param != param; i++);

  return param_to_names[i].string;
}
