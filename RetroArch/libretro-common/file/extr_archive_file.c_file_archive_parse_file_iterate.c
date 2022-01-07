
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file_archive_file_backend {int (* archive_parse_file_iterate_step ) (TYPE_2__*,char const*,struct archive_extract_userdata*,int ) ;} ;
struct archive_extract_userdata {int * context; int archive_path; } ;
struct TYPE_7__ {int type; int * stream; TYPE_1__* backend; int * handle; } ;
typedef TYPE_2__ file_archive_transfer_t ;
typedef int file_archive_file_cb ;
struct TYPE_6__ {int (* stream_free ) (int *) ;} ;







 int file_archive_free (int *) ;
 struct file_archive_file_backend* file_archive_get_file_backend (char const*) ;
 int file_archive_parse_file_init (TYPE_2__*,char const*) ;
 int free (int *) ;
 int strlcpy (int ,char const*,int) ;
 int stub1 (TYPE_2__*,char const*,struct archive_extract_userdata*,int ) ;
 int stub2 (int *) ;

int file_archive_parse_file_iterate(
      file_archive_transfer_t *state,
      bool *returnerr,
      const char *file,
      const char *valid_exts,
      file_archive_file_cb file_cb,
      struct archive_extract_userdata *userdata)
{
   if (!state)
      return -1;

   switch (state->type)
   {
      case 128:
         break;
      case 130:
         if (file_archive_parse_file_init(state, file) == 0)
         {
            if (userdata)
            {
               userdata->context = state->stream;
               strlcpy(userdata->archive_path, file,
                     sizeof(userdata->archive_path));
            }
            state->type = 129;
         }
         else
            state->type = 131;
         break;
      case 129:
         if (file_archive_get_file_backend(file))
         {
            const struct file_archive_file_backend *backend =
               file_archive_get_file_backend(file);
            int ret =
               backend->archive_parse_file_iterate_step(state,
                  valid_exts, userdata, file_cb);

            if (ret != 1)
               state->type = 132;
            if (ret == -1)
               state->type = 131;


            return 0;
         }
         return -1;
      case 131:
         *returnerr = 0;
      case 132:
         if (state->handle)
         {
            file_archive_free(state->handle);
            state->handle = ((void*)0);
         }

         if (state->stream && state->backend)
         {
            if (state->backend->stream_free)
               state->backend->stream_free(state->stream);

            if (state->stream)
               free(state->stream);

            state->stream = ((void*)0);

            if (userdata)
               userdata->context = ((void*)0);
         }
         break;
   }

   if ( state->type == 132 ||
         state->type == 131)
      return -1;

   return 0;
}
