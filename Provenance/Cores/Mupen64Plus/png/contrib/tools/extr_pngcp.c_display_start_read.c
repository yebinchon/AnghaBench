
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {char const* filename; unsigned int w; unsigned int h; unsigned int bpp; unsigned int size; unsigned int read_size; int * fp; } ;


 int USER_ERROR ;
 int display_log (struct display*,int ,char*,int ) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int * stdin ;
 int strerror (int ) ;

__attribute__((used)) static void
display_start_read(struct display *dp, const char *filename)
{
   if (filename != ((void*)0))
   {
      dp->filename = filename;
      dp->fp = fopen(filename, "rb");
   }

   else
   {
      dp->filename = "<stdin>";
      dp->fp = stdin;
   }

   dp->w = dp->h = 0U;
   dp->bpp = 0U;
   dp->size = 0U;
   dp->read_size = 0U;

   if (dp->fp == ((void*)0))
      display_log(dp, USER_ERROR, "file open failed (%s)", strerror(errno));
}
