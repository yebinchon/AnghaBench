
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* linkname; } ;
typedef TYPE_1__ RASPISTILLYUV_STATE ;
typedef int MMAL_STATUS_T ;
typedef int FILE ;


 int MMAL_SUCCESS ;
 int create_filenames (char**,char**,char const*,int) ;
 int errno ;
 int fclose (int *) ;
 int free (char*) ;
 scalar_t__ link (char const*,char*) ;
 scalar_t__ rename (char const*,char const*) ;
 int strerror (int ) ;
 scalar_t__ symlink (char const*,char*) ;
 int vcos_assert (int) ;
 int vcos_log_error (char*,char const*,int ) ;

__attribute__((used)) static void rename_file(RASPISTILLYUV_STATE *state, FILE *output_file,
                        const char *final_filename, const char *use_filename, int frame)
{
   MMAL_STATUS_T status;

   fclose(output_file);
   vcos_assert(use_filename != ((void*)0) && final_filename != ((void*)0));
   if (0 != rename(use_filename, final_filename))
   {
      vcos_log_error("Could not rename temp file to: %s; %s",
                     final_filename,strerror(errno));
   }
   if (state->linkname)
   {
      char *use_link;
      char *final_link;
      status = create_filenames(&final_link, &use_link, state->linkname, frame);


      if (status != MMAL_SUCCESS
            || (0 != link(final_filename, use_link)
                && 0 != symlink(final_filename, use_link))
            || 0 != rename(use_link, final_link))
      {
         vcos_log_error("Could not link as filename: %s; %s",
                        state->linkname,strerror(errno));
      }
      if (use_link) free(use_link);
      if (final_link) free(final_link);
   }
}
