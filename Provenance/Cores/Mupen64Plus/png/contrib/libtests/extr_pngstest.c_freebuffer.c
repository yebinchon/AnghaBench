
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ allocsize; scalar_t__ bufsize; int * buffer; } ;
typedef TYPE_1__ Image ;


 int free (int *) ;

__attribute__((used)) static void
freebuffer(Image *image)
{
   if (image->buffer) free(image->buffer);
   image->buffer = ((void*)0);
   image->bufsize = 0;
   image->allocsize = 0;
}
