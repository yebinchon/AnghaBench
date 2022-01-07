
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {char const* filename; int original_file; } ;
typedef int FILE ;


 int APP_ERROR ;
 int USER_ERROR ;
 int buffer_from_file (int *,int *) ;
 int display_log (struct display*,int ,char*,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int * stdin ;
 int strerror (int) ;

__attribute__((used)) static void
display_cache_file(struct display *dp, const char *filename)

{
   FILE *fp;
   int ret;

   dp->filename = filename;

   if (filename != ((void*)0))
   {
      fp = fopen(filename, "rb");
      if (fp == ((void*)0))
         display_log(dp, USER_ERROR, "open failed: %s", strerror(errno));
   }

   else
      fp = stdin;

   ret = buffer_from_file(&dp->original_file, fp);

   fclose(fp);

   if (ret != 0)
      display_log(dp, APP_ERROR, "read failed: %s", strerror(ret));
}
