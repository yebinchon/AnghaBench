
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int OMX_VIDEO_CODINGTYPE ;
typedef scalar_t__ OMX_PORTDOMAINTYPE ;
typedef int OMX_IMAGE_CODINGTYPE ;
typedef int OMX_AUDIO_CODINGTYPE ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 scalar_t__ OMX_PortDomainAudio ;
 scalar_t__ OMX_PortDomainImage ;
 scalar_t__ OMX_PortDomainVideo ;
 scalar_t__ mmalil_omx_audio_coding_to_encoding (int ) ;
 scalar_t__ mmalil_omx_image_coding_to_encoding (int ) ;
 scalar_t__ mmalil_omx_video_coding_to_encoding (int ) ;

uint32_t mmalil_omx_coding_to_encoding(uint32_t encoding, OMX_PORTDOMAINTYPE domain)
{
   if(domain == OMX_PortDomainVideo)
      return mmalil_omx_video_coding_to_encoding((OMX_VIDEO_CODINGTYPE)encoding);
   else if(domain == OMX_PortDomainAudio)
      return mmalil_omx_audio_coding_to_encoding((OMX_AUDIO_CODINGTYPE)encoding);
   else if(domain == OMX_PortDomainImage)
      return mmalil_omx_image_coding_to_encoding((OMX_IMAGE_CODINGTYPE)encoding);
   else
      return MMAL_ENCODING_UNKNOWN;
}
