
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fcc ;


 int MMAL_ENCODING_I420 ;
 int MMAL_ENCODING_OPAQUE ;
 int MMAL_ENCODING_UNKNOWN ;
 int MMAL_ENCODING_YUVUV128 ;
 int MMAL_FOURCC (char,char,char,char) ;
 int MMAL_MIN (size_t,int) ;
 int memcmp (char const*,char*,size_t) ;
 int memcpy (char*,char const*,int ) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int get_format(const char *name, uint32_t *fourcc, unsigned int *width, unsigned int *height)
{
   char *delim, fcc[4] = {' ', ' ', ' ', ' '};
   unsigned int value_u1, value_u2;
   size_t size;

   *width = *height = 0;
   *fourcc = MMAL_ENCODING_UNKNOWN;


   delim = strchr(name, ':');
   size = delim ? (size_t)(delim - name) : strlen(name);
   memcpy(fcc, name, MMAL_MIN(size, sizeof(fcc)));

   if (size == sizeof("yuv420")-1 && !memcmp(name, "yuv420", size))
      *fourcc = MMAL_ENCODING_I420;
   else if (size == sizeof("yuvuv")-1 && !memcmp(name, "yuvuv", size))
      *fourcc = MMAL_ENCODING_YUVUV128;
   else if (size == sizeof("opaque")-1 && !memcmp(name, "opaque", size))
      *fourcc = MMAL_ENCODING_OPAQUE;
   else if (size > 0 && size <= 4)
      *fourcc = MMAL_FOURCC(fcc[0], fcc[1], fcc[2], fcc[3]);
   else
      return 1;

   if (!delim)
      return 0;



   if (sscanf(delim+1, "%ux%u", &value_u1, &value_u2) != 2)
      return 1;

   *width = value_u1;
   *height = value_u2;
   return 0;
}
