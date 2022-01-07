
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ allocsize; scalar_t__ buffer; } ;
typedef TYPE_1__ Image ;


 scalar_t__ check16 (scalar_t__,int) ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
checkbuffer(Image *image, const char *arg)
{
   if (check16(image->buffer, 95))
   {
      fflush(stdout);
      fprintf(stderr, "%s: overwrite at start of image buffer\n", arg);
      exit(1);
   }

   if (check16(image->buffer+16+image->allocsize, 95))
   {
      fflush(stdout);
      fprintf(stderr, "%s: overwrite at end of image buffer\n", arg);
      exit(1);
   }
}
