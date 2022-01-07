
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {char* namebuf; } ;


 int INTERNAL_ERROR ;
 int USER_ERROR ;
 int display_log (struct display*,int ,char*,...) ;
 scalar_t__ isdir (struct display*,char*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
makename(struct display *dp, const char *dir, const char *infile)
{

   dp->namebuf[0] = 0;

   if (dir == ((void*)0) || infile == ((void*)0))
      display_log(dp, INTERNAL_ERROR, "NULL name to makename");

   else
   {
      size_t dsize = strlen(dir);

      if (dsize <= (sizeof dp->namebuf)-2)
      {
         size_t isize = strlen(infile);
         size_t istart = isize-1;


         if (infile[istart] == '/')
            display_log(dp, INTERNAL_ERROR, "infile with trailing /");

         memcpy(dp->namebuf, dir, dsize);
         if (dsize > 0 && dp->namebuf[dsize-1] != '/')
            dp->namebuf[dsize++] = '/';


         while (istart > 0 && infile[istart-1] != '/')
            --istart;

         isize -= istart;
         infile += istart;

         if (dsize+isize < (sizeof dp->namebuf))
         {
            memcpy(dp->namebuf+dsize, infile, isize+1);

            if (isdir(dp, dp->namebuf))
               display_log(dp, USER_ERROR, "%s: output file is a directory",
                     dp->namebuf);
         }

         else
         {
            dp->namebuf[dsize] = 0;
            display_log(dp, USER_ERROR, "%s%s: output file name too long",
                  dp->namebuf, infile);
         }
      }

      else
         display_log(dp, USER_ERROR, "%s: output directory name too long", dir);
   }
}
