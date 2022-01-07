
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int options; char* output_file; int * fp; } ;


 int NOWRITE ;
 int USER_ERROR ;
 int assert (int ) ;
 int display_log (struct display*,int ,char*,char*,int ) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int * stdout ;
 int strerror (int ) ;

__attribute__((used)) static void
display_start_write(struct display *dp, const char *filename)
{
   assert(dp->fp == ((void*)0));

   if ((dp->options & NOWRITE) != 0)
      dp->output_file = "<no write>";

   else
   {
      if (filename != ((void*)0))
      {
         dp->output_file = filename;
         dp->fp = fopen(filename, "wb");
      }

      else
      {
         dp->output_file = "<stdout>";
         dp->fp = stdout;
      }

      if (dp->fp == ((void*)0))
         display_log(dp, USER_ERROR, "%s: file open failed (%s)",
               dp->output_file, strerror(errno));
   }
}
