
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_mixer_userdata {int is_finished; int slot_selection_type; int slot_selection_idx; int handle; struct audio_mixer_userdata* data; struct audio_mixer_userdata* path; struct audio_mixer_userdata* user_data; int cleanup; int handler; struct audio_mixer_userdata* state; int stream_type; int status; int * cb; int callback; int type; } ;
struct audio_mixer_handle {int is_finished; int slot_selection_type; int slot_selection_idx; int handle; struct audio_mixer_handle* data; struct audio_mixer_handle* path; struct audio_mixer_handle* user_data; int cleanup; int handler; struct audio_mixer_handle* state; int stream_type; int status; int * cb; int callback; int type; } ;
typedef struct audio_mixer_userdata retro_task_t ;
typedef int * retro_task_callback_t ;
typedef struct audio_mixer_userdata nbio_handle_t ;
typedef enum audio_mixer_slot_selection_type { ____Placeholder_audio_mixer_slot_selection_type } audio_mixer_slot_selection_type ;


 int AUDIO_MIXER_TYPE_FLAC ;
 int AUDIO_MIXER_TYPE_MOD ;
 int AUDIO_MIXER_TYPE_MP3 ;
 int AUDIO_MIXER_TYPE_NONE ;
 int AUDIO_MIXER_TYPE_OGG ;
 int AUDIO_MIXER_TYPE_WAV ;
 int AUDIO_STREAM_TYPE_SYSTEM ;
 int AUDIO_STREAM_TYPE_USER ;
 int NBIO_STATUS_INIT ;
 int NBIO_TYPE_FLAC ;
 int NBIO_TYPE_MOD ;
 int NBIO_TYPE_MP3 ;
 int NBIO_TYPE_NONE ;
 int NBIO_TYPE_OGG ;
 int NBIO_TYPE_WAV ;
 int RARCH_ERR (char*,char const*,int ) ;
 scalar_t__ calloc (int,int) ;
 int cb_nbio_audio_mixer_load ;
 int errno ;
 int free (struct audio_mixer_userdata*) ;
 int nbio_free (int ) ;
 struct audio_mixer_userdata* strdup (char const*) ;
 int strerror (int ) ;
 int string_is_empty (struct audio_mixer_userdata*) ;
 int strlcpy (struct audio_mixer_userdata*,char const*,int) ;
 scalar_t__ strstr (char const*,char*) ;
 int task_audio_mixer_handle_upload_flac ;
 int task_audio_mixer_handle_upload_mod ;
 int task_audio_mixer_handle_upload_mp3 ;
 int task_audio_mixer_handle_upload_ogg ;
 int task_audio_mixer_handle_upload_wav ;
 int task_audio_mixer_load_free ;
 int task_file_load_handler ;
 struct audio_mixer_userdata* task_init () ;
 int task_queue_push (struct audio_mixer_userdata*) ;

bool task_push_audio_mixer_load(
      const char *fullpath, retro_task_callback_t cb, void *user_data,
      bool system,
      enum audio_mixer_slot_selection_type slot_selection_type,
      int slot_selection_idx)
{
   nbio_handle_t *nbio = ((void*)0);
   struct audio_mixer_handle *mixer = ((void*)0);
   retro_task_t *t = task_init();
   struct audio_mixer_userdata *user = (struct audio_mixer_userdata*)calloc(1, sizeof(*user));

   if (!t || !user)
      goto error;

   nbio = (nbio_handle_t*)calloc(1, sizeof(*nbio));

   if (!nbio)
      goto error;

   nbio->path = strdup(fullpath);

   mixer = (struct audio_mixer_handle*)calloc(1, sizeof(*mixer));
   if (!mixer)
      goto error;

   mixer->is_finished = 0;
   mixer->cb = cb;

   strlcpy(mixer->path, fullpath, sizeof(mixer->path));

   nbio->type = NBIO_TYPE_NONE;
   mixer->type = AUDIO_MIXER_TYPE_NONE;

   if (strstr(fullpath, ".wav"))
   {
      mixer->type = AUDIO_MIXER_TYPE_WAV;
      nbio->type = NBIO_TYPE_WAV;
      t->callback = task_audio_mixer_handle_upload_wav;
   }
   else if (strstr(fullpath, ".ogg"))
   {
      mixer->type = AUDIO_MIXER_TYPE_OGG;
      nbio->type = NBIO_TYPE_OGG;
      t->callback = task_audio_mixer_handle_upload_ogg;
   }
   else if (strstr(fullpath, ".mp3"))
   {
      mixer->type = AUDIO_MIXER_TYPE_MP3;
      nbio->type = NBIO_TYPE_MP3;
      t->callback = task_audio_mixer_handle_upload_mp3;
   }
   else if (strstr(fullpath, ".flac"))
   {
      mixer->type = AUDIO_MIXER_TYPE_FLAC;
      nbio->type = NBIO_TYPE_FLAC;
      t->callback = task_audio_mixer_handle_upload_flac;
   }
   else if (
         strstr(fullpath, ".mod") ||
         strstr(fullpath, ".s3m") ||
         strstr(fullpath, ".xm"))
   {
      mixer->type = AUDIO_MIXER_TYPE_MOD;
      nbio->type = NBIO_TYPE_MOD;
      t->callback = task_audio_mixer_handle_upload_mod;
   }

   nbio->data = (struct audio_mixer_handle*)mixer;
   nbio->is_finished = 0;
   nbio->cb = &cb_nbio_audio_mixer_load;
   nbio->status = NBIO_STATUS_INIT;

   if (system)
      user->stream_type = AUDIO_STREAM_TYPE_SYSTEM;
   else
      user->stream_type = AUDIO_STREAM_TYPE_USER;

   user->slot_selection_type = slot_selection_type;
   user->slot_selection_idx = slot_selection_idx;

   t->state = nbio;
   t->handler = task_file_load_handler;
   t->cleanup = task_audio_mixer_load_free;
   t->user_data = user;

   task_queue_push(t);

   return 1;

error:
   if (nbio)
   {
      if (!string_is_empty(nbio->path))
         free(nbio->path);
      if (nbio->data)
         free(nbio->data);
      nbio_free(nbio->handle);
      free(nbio);
   }
   if (user)
      free(user);
   if (t)
      free(t);

   RARCH_ERR("[audio mixer load] Failed to open '%s': %s.\n",
         fullpath, strerror(errno));

   return 0;
}
