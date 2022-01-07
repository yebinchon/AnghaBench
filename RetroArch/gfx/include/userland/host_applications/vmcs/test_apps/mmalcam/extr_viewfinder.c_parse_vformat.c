
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LOG_DEBUG (char*,int,int,char const*) ;
 int MMAL_ENCODING_H263 ;
 int MMAL_ENCODING_H264 ;
 int MMAL_ENCODING_JPEG ;
 int MMAL_ENCODING_MP4V ;
 int fprintf (int ,char*,...) ;
 int sscanf (char const*,char*,int*,int*,char*) ;
 int stderr ;
 int vcos_strncasecmp (char*,char*,int) ;

__attribute__((used)) static int parse_vformat(const char* vformat, uint32_t *out_width,
      uint32_t *out_height, uint32_t *out_encoding)
{
   char vcodec[8];
   uint32_t width, height, encoding;


   if (sscanf(vformat, "%4ux%4u:%7s", &width, &height, vcodec) != 3)
   {
      fprintf(stderr, "Error, malformed or unsupported video format: %s\n", vformat);
      return -1;
   }

   if (!vcos_strncasecmp(vcodec, "h263", 4))
   {
      encoding = MMAL_ENCODING_H263;

      if (!((width == 128 && height == 96) ||
            (width == 176 && height == 144) ||
            (width == 352 && height == 288) ||
            (width == 704 && height == 576) ||
            (width == 1408 && height == 1152)))
      {
         fprintf(stderr,
               "Error, only 128x96, 176x144, 352x288, 704x576 and 1408x1152 are supported for H263\n");
         return -1;
      }
   }
   else if (!vcos_strncasecmp(vcodec, "mp4v", 4))
      encoding = MMAL_ENCODING_MP4V;
   else if (!vcos_strncasecmp(vcodec, "h264", 4))
      encoding = MMAL_ENCODING_H264;
   else if (!vcos_strncasecmp(vcodec, "jpeg", 4))
      encoding = MMAL_ENCODING_JPEG;
   else
   {
      fprintf(stderr, "Error, unknown video encoding: %s\n", vcodec);
      return -1;
   }

   if (out_width)
      *out_width = width;
   if (out_height)
      *out_height = height;
   if (out_encoding)
      *out_encoding = encoding;
   LOG_DEBUG("Video format: w:%d h:%d codec:%4.4s", width, height, (const char *)&encoding);

   return 0;
}
