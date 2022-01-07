
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int options; unsigned int write_size; char* operation; int * fp; int ip; int * write_pp; scalar_t__ csp; scalar_t__ nsp; scalar_t__ tsp; } ;
typedef int FILE ;


 int APP_ERROR ;
 int IGNORE_INDEX ;
 int LIBPNG_ERROR ;
 int PNGCP_TIME_WRITE ;
 int PNG_FILTER_TYPE_BASE ;
 int PNG_HANDLE_CHUNK_ALWAYS ;
 int PNG_LIBPNG_VER_STRING ;
 int SEARCH ;
 int display_clean_write (struct display*) ;
 int display_error ;
 int display_log (struct display*,int ,char*,...) ;
 int display_start_write (struct display*,char const*) ;
 int display_warning ;
 int end_timer (struct display*,int ) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 scalar_t__ get_option (struct display*,char*,int*) ;
 scalar_t__ getallopts (struct display*,char*,int*) ;
 int * png_create_write_struct (int ,struct display*,int ,int ) ;
 int png_set_ICC_profile_compression (int *,int) ;
 int png_set_IDAT_size (int *,int) ;
 int png_set_benign_errors (int *,int) ;
 int png_set_check_for_invalid_index (int *,int) ;
 int png_set_compression (int *,int) ;
 int png_set_filter (int *,int ,int) ;
 int png_set_keep_unknown_chunks (int *,int ,int *,int ) ;
 int png_set_text_compression (int *,int) ;
 int png_set_user_limits (int *,int,int) ;
 int png_set_write_fn (int *,struct display*,int ,int *) ;
 int png_write_png (int *,int ,unsigned int,int *) ;
 int search_compression (struct display*) ;
 int set_ICC_profile_compression (struct display*) ;
 int set_compression (struct display*) ;
 int set_text_compression (struct display*) ;
 int start_timer (struct display*,int ) ;
 int strerror (int ) ;
 int text_restore (struct display*) ;
 int write_function ;

__attribute__((used)) static void
write_png(struct display *dp, const char *destname)
{
   display_clean_write(dp);
   display_start_write(dp, destname);

   dp->write_pp = png_create_write_struct(PNG_LIBPNG_VER_STRING, dp,
      display_error, display_warning);

   if (dp->write_pp == ((void*)0))
      display_log(dp, LIBPNG_ERROR, "failed to create write png_struct");





   png_set_write_fn(dp->write_pp, dp, write_function, ((void*)0) );
   text_restore(dp);
   dp->tsp = dp->nsp;
   dp->nsp = dp->csp = 0;
   if (dp->options & SEARCH)
      search_compression(dp);
   else
      set_compression(dp);
   set_ICC_profile_compression(dp);
   set_text_compression(dp);

   {
      int val;


      if (get_option(dp, "IDAT-size", &val))
         png_set_IDAT_size(dp->write_pp, val);
   }
   dp->write_size = 0U;
   start_timer(dp, PNGCP_TIME_WRITE);
   png_write_png(dp->write_pp, dp->ip, 0U , ((void*)0) );
   end_timer(dp, PNGCP_TIME_WRITE);


   if (dp->fp != ((void*)0))
   {
      FILE *fp = dp->fp;
      dp->fp = ((void*)0);
      if (fclose(fp))
         display_log(dp, APP_ERROR, "%s: write failed (%s)",
               destname == ((void*)0) ? "stdout" : destname, strerror(errno));
   }




   display_clean_write(dp);
   dp->operation = "none";
}
