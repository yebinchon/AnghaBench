
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sixel_output_t ;
typedef int sixel_dither_t ;
typedef int SIXELSTATUS ;


 scalar_t__ SIXEL_FAILED (int ) ;
 int SIXEL_LARGE_AUTO ;
 int SIXEL_QUALITY_AUTO ;
 int SIXEL_REP_AUTO ;
 int * sixel_dither_create (int) ;
 int sixel_dither_initialize (int *,unsigned char*,int,int,int,int ,int ,int ) ;
 int sixel_dither_unref (int *) ;
 int sixel_encode (unsigned char*,int,int,int,int *,int *) ;
 int * sixel_output_create (int ,int ) ;
 int sixel_output_unref (int *) ;
 int sixel_write ;
 int stdout ;

__attribute__((used)) static SIXELSTATUS output_sixel(unsigned char *pixbuf, int width, int height,
      int ncolors, int pixelformat)
{
   sixel_output_t *context;
   sixel_dither_t *dither;
   SIXELSTATUS status;

   context = sixel_output_create(sixel_write, stdout);
   dither = sixel_dither_create(ncolors);
   status = sixel_dither_initialize(dither, pixbuf,
         width, height,
         pixelformat,
         SIXEL_LARGE_AUTO,
         SIXEL_REP_AUTO,
         SIXEL_QUALITY_AUTO);
   if (SIXEL_FAILED(status))
      return status;
   status = sixel_encode(pixbuf, width, height,
         pixelformat, dither, context);
   if (SIXEL_FAILED(status))
      return status;
   sixel_output_unref(context);
   sixel_dither_unref(dither);

   return status;
}
