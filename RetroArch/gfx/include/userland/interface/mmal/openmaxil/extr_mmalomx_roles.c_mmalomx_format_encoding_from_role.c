
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_FOURCC_T ;
typedef int MMAL_ES_TYPE_T ;
typedef int MMALOMX_ROLE_T ;
 int MMAL_ENCODING_AC3 ;
 int MMAL_ENCODING_H263 ;
 int MMAL_ENCODING_H264 ;
 int MMAL_ENCODING_MP2V ;
 int MMAL_ENCODING_MP4A ;
 int MMAL_ENCODING_MP4V ;
 int MMAL_ENCODING_MPGA ;
 int MMAL_ENCODING_UNKNOWN ;
 int MMAL_ENCODING_VP8 ;
 int MMAL_ENCODING_WMV3 ;
 int MMAL_ES_TYPE_AUDIO ;
 int MMAL_ES_TYPE_UNKNOWN ;
 int MMAL_ES_TYPE_VIDEO ;

__attribute__((used)) static void mmalomx_format_encoding_from_role(MMALOMX_ROLE_T role,
   MMAL_FOURCC_T *encoding, MMAL_ES_TYPE_T *es_type, unsigned int *port)
{
   switch (role)
   {
   case 133:
   case 128:
      *encoding = MMAL_ENCODING_MP4V;
      *es_type = MMAL_ES_TYPE_VIDEO;
      break;
   case 136:
   case 130:
      *encoding = MMAL_ENCODING_H264;
      *es_type = MMAL_ES_TYPE_VIDEO;
      break;
   case 134:
      *encoding = MMAL_ENCODING_MP2V;
      *es_type = MMAL_ES_TYPE_VIDEO;
      break;
   case 131:
      *encoding = MMAL_ENCODING_WMV3;
      *es_type = MMAL_ES_TYPE_VIDEO;
      break;
   case 132:
      *encoding = MMAL_ENCODING_VP8;
      *es_type = MMAL_ES_TYPE_VIDEO;
      break;
   case 135:
   case 129:
      *encoding = MMAL_ENCODING_H263;
      *es_type = MMAL_ES_TYPE_VIDEO;
      break;
   case 141:
      *encoding = MMAL_ENCODING_MP4A;
      *es_type = MMAL_ES_TYPE_AUDIO;
      break;
   case 139:
   case 138:
   case 137:
      *encoding = MMAL_ENCODING_MPGA;
      *es_type = MMAL_ES_TYPE_AUDIO;
      break;

   case 140:
      *encoding = MMAL_ENCODING_AC3;
      *es_type = MMAL_ES_TYPE_AUDIO;
      break;

   default:
      *encoding = MMAL_ENCODING_UNKNOWN;
      *es_type = MMAL_ES_TYPE_UNKNOWN;
      break;
   }

   switch (role)
   {
   case 129:
   case 128:
   case 130:
      *port = 1;
      break;
   default:
      *port = 0;
      break;
   }
}
