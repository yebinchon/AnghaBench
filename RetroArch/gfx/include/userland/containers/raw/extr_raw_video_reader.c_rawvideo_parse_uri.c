
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_FOURCC_T ;
struct TYPE_6__ {TYPE_1__* io; } ;
struct TYPE_5__ {char* uri; } ;




 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;
 unsigned int sscanf (char const*,char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rawvideo_parse_uri( VC_CONTAINER_T *ctx,
   VC_CONTAINER_FOURCC_T *c, unsigned int *w, unsigned int *h,
   unsigned int *fr_num, unsigned int *fr_den, unsigned *block_size )
{
   VC_CONTAINER_FOURCC_T codec = 0;
   unsigned int i, matches, width = 0, height = 0, fn = 0, fd = 0, size = 0;
   const char *uri = ctx->priv->io->uri;


   for (i = 0; uri[i]; i++)
   {
      if (uri[i] != '_' && uri[i+1] != 'C')
         continue;

      matches = sscanf(uri+i, "_C%4cW%iH%iF%i#%iS%i", (char *)&codec,
         &width, &height, &fn, &fd, &size);
      if (matches >= 3)
         break;
   }
   if (!uri[i])
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   if (!size)
   {
      switch (codec)
      {
      case 129:
      case 128:
         size = width * height * 3 / 2;
         break;
      default: break;
      }
   }

   if (!width || !height || !size)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   if (block_size) *block_size = size;
   if (c) *c = codec;
   if (w) *w = width;
   if (h) *h = height;
   if (fr_num) *fr_num = fn;
   if (fr_den) *fr_den = fd;
   if (block_size) *block_size = size;

   return VC_CONTAINER_SUCCESS;
}
