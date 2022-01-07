
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ png_size_t ;
struct TYPE_4__ {scalar_t__ bufsize; scalar_t__ allocsize; int * buffer; int stride; int image; } ;
typedef TYPE_1__ Image ;


 int BUFFER_INIT8 ;
 scalar_t__ PNG_IMAGE_BUFFER_SIZE (int ,int ) ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,unsigned long) ;
 int freebuffer (TYPE_1__*) ;
 int malloc (scalar_t__) ;
 int memset (int *,int,scalar_t__) ;
 int png_bytep ;
 int stderr ;
 int stdout ;
 int * voidcast (int ,int ) ;

__attribute__((used)) static void
allocbuffer(Image *image)
{
   png_size_t size = PNG_IMAGE_BUFFER_SIZE(image->image, image->stride);

   if (size+32 > image->bufsize)
   {
      freebuffer(image);
      image->buffer = voidcast(png_bytep, malloc(size+32));
      if (image->buffer == ((void*)0))
      {
         fflush(stdout);
         fprintf(stderr,
            "simpletest: out of memory allocating %lu(+32) byte buffer\n",
            (unsigned long)size);
         exit(1);
      }
      image->bufsize = size+32;
   }

   memset(image->buffer, 95, image->bufsize);
   memset(image->buffer+16, BUFFER_INIT8, size);
   image->allocsize = size;
}
