
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct texture_image {scalar_t__ list_id; int width; int height; TYPE_2__* thumbnail; } ;
typedef int retro_task_t ;
typedef struct texture_image menu_thumbnail_tag_t ;
struct TYPE_4__ {uintptr_t tag; float target_value; float* subject; int * userdata; int * cb; int duration; int easing_enum; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;
struct TYPE_5__ {scalar_t__ status; int width; int height; float alpha; scalar_t__ texture; } ;


 int EASING_OUT_QUAD ;
 scalar_t__ MENU_THUMBNAIL_STATUS_AVAILABLE ;
 scalar_t__ MENU_THUMBNAIL_STATUS_MISSING ;
 scalar_t__ MENU_THUMBNAIL_STATUS_PENDING ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int free (struct texture_image*) ;
 int image_texture_free (struct texture_image*) ;
 int menu_animation_push (TYPE_1__*) ;
 int menu_thumbnail_fade_duration ;
 scalar_t__ menu_thumbnail_list_id ;
 int menu_thumbnail_reset (TYPE_2__*) ;
 int video_driver_texture_load (struct texture_image*,int ,scalar_t__*) ;

__attribute__((used)) static void menu_thumbnail_handle_upload(
      retro_task_t *task, void *task_data, void *user_data, const char *err)
{
   struct texture_image *img = (struct texture_image*)task_data;
   menu_thumbnail_tag_t *thumbnail_tag = (menu_thumbnail_tag_t*)user_data;
   menu_animation_ctx_entry_t animation_entry;


   if (!thumbnail_tag)
      goto end;



   if (thumbnail_tag->list_id != menu_thumbnail_list_id)
      goto end;


   if (thumbnail_tag->thumbnail->status != MENU_THUMBNAIL_STATUS_PENDING)
      goto end;





   if (thumbnail_tag->thumbnail->texture)
      menu_thumbnail_reset(thumbnail_tag->thumbnail);



   thumbnail_tag->thumbnail->status = MENU_THUMBNAIL_STATUS_MISSING;


   if (!img)
      goto end;

   if ((img->width < 1) || (img->height < 1))
      goto end;


   if (!video_driver_texture_load(
            img, TEXTURE_FILTER_MIPMAP_LINEAR, &thumbnail_tag->thumbnail->texture))
      goto end;


   thumbnail_tag->thumbnail->width = img->width;
   thumbnail_tag->thumbnail->height = img->height;


   thumbnail_tag->thumbnail->status = MENU_THUMBNAIL_STATUS_AVAILABLE;


   thumbnail_tag->thumbnail->alpha = 0.0f;

   animation_entry.easing_enum = EASING_OUT_QUAD;
   animation_entry.tag = (uintptr_t)&thumbnail_tag->thumbnail->alpha;
   animation_entry.duration = menu_thumbnail_fade_duration;
   animation_entry.target_value = 1.0f;
   animation_entry.subject = &thumbnail_tag->thumbnail->alpha;
   animation_entry.cb = ((void*)0);
   animation_entry.userdata = ((void*)0);

   menu_animation_push(&animation_entry);

end:

   if (img)
   {
      image_texture_free(img);
      free(img);
   }

   if (thumbnail_tag)
      free(thumbnail_tag);
}
