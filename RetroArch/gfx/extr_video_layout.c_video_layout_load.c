
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rxml_document_t ;
typedef int respath ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int view_array; int base_path; scalar_t__ is_archive; } ;


 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char const*) ;
 scalar_t__ file_archive_compressed_read (char*,void**,int *,scalar_t__*) ;
 int fill_pathname_basedir (char*,char const*,int) ;
 int free (void*) ;
 int load (int *,int *) ;
 scalar_t__ path_is_compressed_file (char const*) ;
 scalar_t__ realloc (void*,size_t) ;
 int rxml_free_document (int *) ;
 int * rxml_load_document (char const*) ;
 int * rxml_load_document_string (char*) ;
 int set_string (int *,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 TYPE_1__* video_layout_state ;
 int video_layout_view_index () ;
 int video_layout_view_select (int ) ;

bool video_layout_load(const char *path)
{
   rxml_document_t *doc;
   bool result;

   if(!path || !strlen(path))
      return 1;

   video_layout_state->is_archive = path_is_compressed_file(path);

   doc = ((void*)0);

   if(video_layout_state->is_archive)
   {
      void *buf;
      int64_t len;

      char respath[PATH_MAX_LENGTH];
      strlcpy(respath, path, sizeof(respath));
      strlcat(respath, "#", sizeof(respath));
      set_string(&video_layout_state->base_path, respath);

      strlcat(respath, "default.lay", sizeof(respath));
      if (file_archive_compressed_read(respath, &buf, ((void*)0), &len))
      {
         char *str;
         if ((str = (char*)realloc(buf, (size_t)len + 1)))
         {
            str[(size_t)len] = '\0';
            doc = rxml_load_document_string(str);
            free(str);
         }
         else free(buf);
      }
   }
   else
   {
      char respath[PATH_MAX_LENGTH];
      fill_pathname_basedir(respath, path, sizeof(respath));
      set_string(&video_layout_state->base_path, respath);
      doc = rxml_load_document(path);
   }

   if (!doc)
   {
      RARCH_LOG("video_layout: unable to open file \"%s\"\n", path);
      return 0;
   }

   result = load(&video_layout_state->view_array, doc);
   rxml_free_document(doc);

   video_layout_view_select(video_layout_view_index());
   return result;
}
