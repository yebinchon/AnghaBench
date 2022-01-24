#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct audio_mixer_userdata {int is_finished; int slot_selection_type; int slot_selection_idx; int /*<<< orphan*/  handle; struct audio_mixer_userdata* data; struct audio_mixer_userdata* path; struct audio_mixer_userdata* user_data; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  handler; struct audio_mixer_userdata* state; int /*<<< orphan*/  status; int /*<<< orphan*/ * cb; int /*<<< orphan*/  stream_type; int /*<<< orphan*/  callback; int /*<<< orphan*/  type; } ;
struct audio_mixer_handle {int is_finished; int slot_selection_type; int slot_selection_idx; int /*<<< orphan*/  handle; struct audio_mixer_handle* data; struct audio_mixer_handle* path; struct audio_mixer_handle* user_data; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  handler; struct audio_mixer_handle* state; int /*<<< orphan*/  status; int /*<<< orphan*/ * cb; int /*<<< orphan*/  stream_type; int /*<<< orphan*/  callback; int /*<<< orphan*/  type; } ;
typedef  struct audio_mixer_userdata retro_task_t ;
typedef  int /*<<< orphan*/  retro_task_callback_t ;
typedef  struct audio_mixer_userdata nbio_handle_t ;
typedef  enum audio_mixer_slot_selection_type { ____Placeholder_audio_mixer_slot_selection_type } audio_mixer_slot_selection_type ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_MIXER_TYPE_FLAC ; 
 int /*<<< orphan*/  AUDIO_MIXER_TYPE_MOD ; 
 int /*<<< orphan*/  AUDIO_MIXER_TYPE_MP3 ; 
 int /*<<< orphan*/  AUDIO_MIXER_TYPE_NONE ; 
 int /*<<< orphan*/  AUDIO_MIXER_TYPE_OGG ; 
 int /*<<< orphan*/  AUDIO_MIXER_TYPE_WAV ; 
 int /*<<< orphan*/  AUDIO_STREAM_TYPE_SYSTEM ; 
 int /*<<< orphan*/  AUDIO_STREAM_TYPE_USER ; 
 int /*<<< orphan*/  NBIO_STATUS_INIT ; 
 int /*<<< orphan*/  NBIO_TYPE_FLAC ; 
 int /*<<< orphan*/  NBIO_TYPE_MOD ; 
 int /*<<< orphan*/  NBIO_TYPE_MP3 ; 
 int /*<<< orphan*/  NBIO_TYPE_NONE ; 
 int /*<<< orphan*/  NBIO_TYPE_OGG ; 
 int /*<<< orphan*/  NBIO_TYPE_WAV ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  cb_nbio_audio_mixer_load ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct audio_mixer_userdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct audio_mixer_userdata* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct audio_mixer_userdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct audio_mixer_userdata*,char const*,int) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  task_audio_mixer_handle_upload_flac_and_play ; 
 int /*<<< orphan*/  task_audio_mixer_handle_upload_mod_and_play ; 
 int /*<<< orphan*/  task_audio_mixer_handle_upload_mp3_and_play ; 
 int /*<<< orphan*/  task_audio_mixer_handle_upload_ogg_and_play ; 
 int /*<<< orphan*/  task_audio_mixer_handle_upload_wav_and_play ; 
 int /*<<< orphan*/  task_audio_mixer_load_free ; 
 int /*<<< orphan*/  task_file_load_handler ; 
 struct audio_mixer_userdata* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct audio_mixer_userdata*) ; 

bool FUNC11(
      const char *fullpath, retro_task_callback_t cb, void *user_data,
      bool system,
      enum audio_mixer_slot_selection_type slot_selection_type,
      int slot_selection_idx)
{
   nbio_handle_t             *nbio    = NULL;
   struct audio_mixer_handle   *mixer = NULL;
   retro_task_t                   *t  = FUNC9();
   struct audio_mixer_userdata *user  = (struct audio_mixer_userdata*)FUNC1(1, sizeof(*user));

   if (!t || !user)
      goto error;

   nbio               = (nbio_handle_t*)FUNC1(1, sizeof(*nbio));

   if (!nbio)
      goto error;

   nbio->path         = FUNC4(fullpath);

   mixer              = (struct audio_mixer_handle*)FUNC1(1, sizeof(*mixer));
   if (!mixer)
      goto error;

   mixer->is_finished = false;

   FUNC7(mixer->path, fullpath, sizeof(mixer->path));

   nbio->type         = NBIO_TYPE_NONE;
   mixer->type        = AUDIO_MIXER_TYPE_NONE;

   if (FUNC8(fullpath, ".wav"))
   {
      mixer->type     = AUDIO_MIXER_TYPE_WAV;
      nbio->type      = NBIO_TYPE_WAV;
      t->callback     = task_audio_mixer_handle_upload_wav_and_play;
   }
   else if (FUNC8(fullpath, ".ogg"))
   {
      mixer->type     = AUDIO_MIXER_TYPE_OGG;
      nbio->type      = NBIO_TYPE_OGG;
      t->callback     = task_audio_mixer_handle_upload_ogg_and_play;
   }
   else if (FUNC8(fullpath, ".mp3"))
   {
      mixer->type     = AUDIO_MIXER_TYPE_MP3;
      nbio->type      = NBIO_TYPE_MP3;
      t->callback     = task_audio_mixer_handle_upload_mp3_and_play;
   }
   else if (FUNC8(fullpath, ".flac"))
   {
      mixer->type     = AUDIO_MIXER_TYPE_FLAC;
      nbio->type      = NBIO_TYPE_FLAC;
      t->callback     = task_audio_mixer_handle_upload_flac_and_play;
   }
   else if (	
         FUNC8(fullpath, ".mod") ||
         FUNC8(fullpath, ".s3m") ||
         FUNC8(fullpath, ".xm"))
   {
      mixer->type     = AUDIO_MIXER_TYPE_MOD;
      nbio->type      = NBIO_TYPE_MOD;
      t->callback     = task_audio_mixer_handle_upload_mod_and_play;
   }

   if (system)
      user->stream_type      = AUDIO_STREAM_TYPE_SYSTEM;
   else
      user->stream_type      = AUDIO_STREAM_TYPE_USER;

   user->slot_selection_type = slot_selection_type;
   user->slot_selection_idx  = slot_selection_idx;

   nbio->data                = (struct audio_mixer_handle*)mixer;
   nbio->is_finished         = false;
   nbio->cb                  = &cb_nbio_audio_mixer_load;
   nbio->status              = NBIO_STATUS_INIT;

   t->state           = nbio;
   t->handler         = task_file_load_handler;
   t->cleanup         = task_audio_mixer_load_free;
   t->user_data       = user;

   FUNC10(t);

   return true;

error:
   if (nbio)
   {
      if (!FUNC6(nbio->path))
         FUNC2(nbio->path);
      if (nbio->data)
         FUNC2(nbio->data);
      FUNC3(nbio->handle);
      FUNC2(nbio);
   }
   if (user)
      FUNC2(user);
   if (t)
      FUNC2(t);

   FUNC0("[audio mixer load] Failed to open '%s': %s.\n",
         fullpath, FUNC5(errno));

   return false;
}