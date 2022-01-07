
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int video_font_size; } ;
struct TYPE_12__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_13__ {char* title; int progress; int finished; int cancelled; int error; int alternative_look; TYPE_4__* frontend_userdata; int ident; } ;
typedef TYPE_3__ retro_task_t ;
typedef int msg_widget ;
struct TYPE_14__ {unsigned int duration; float alpha; int dying; int expired; int expiration_timer_started; float msg_transition_animation; int text_height; int unfolded; int unfolding; float unfold; char* msg; unsigned int msg_len; char* task_title_ptr; int task_count; int width; int task_progress; int task_finished; int task_cancelled; int task_error; int * msg_new; scalar_t__ expiration_timer; scalar_t__ hourglass_rotation; int task_ident; TYPE_3__* task_ptr; scalar_t__ offset_y; } ;
typedef TYPE_4__ menu_widget_msg_t ;
struct TYPE_15__ {uintptr_t tag; int duration; float target_value; float* subject; TYPE_4__* userdata; int (* cb ) (TYPE_4__*) ;int easing_enum; } ;
typedef TYPE_5__ menu_animation_ctx_entry_t ;
typedef enum message_queue_icon { ____Placeholder_message_queue_icon } message_queue_icon ;
typedef enum message_queue_category { ____Placeholder_message_queue_category } message_queue_category ;


 int EASING_OUT_QUAD ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 scalar_t__ calloc (int,int) ;
 TYPE_2__* config_get_ptr () ;
 int fifo_write (int ,TYPE_4__**,int) ;
 scalar_t__ fifo_write_avail (int ) ;
 int font_driver_get_message_width (int ,char const*,unsigned int,int) ;
 int font_regular ;
 int free (int *) ;
 int menu_animation_push (TYPE_5__*) ;
 int menu_timer_kill (scalar_t__*) ;
 int msg_queue ;
 unsigned int msg_queue_default_rect_width ;
 int msg_queue_glyph_width ;
 scalar_t__ msg_queue_has_icons ;
 float msg_queue_height ;
 int msg_queue_text_scale_factor ;
 int msg_widget_msg_transition_animation_done (TYPE_4__*) ;
 int simple_widget_padding ;
 void* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;
 int word_wrap (char*,char*,unsigned int,int,int) ;

void menu_widgets_msg_queue_push(
      retro_task_t *task, const char *msg,
      unsigned duration,
      char *title,
      enum message_queue_icon icon,
      enum message_queue_category category,
      unsigned prio, bool flush)
{
   menu_widget_msg_t* msg_widget = ((void*)0);

   if (fifo_write_avail(msg_queue) > 0)
   {

      if (task && task->frontend_userdata)
      {
         msg_widget = (menu_widget_msg_t*) task->frontend_userdata;
         msg_widget->task_ptr = task;
      }


      if (!msg_widget)
      {
         const char *title = msg;

         msg_widget = (menu_widget_msg_t*)calloc(1, sizeof(*msg_widget));

         if (task)
            title = task->title;

         msg_widget->duration = duration;
         msg_widget->offset_y = 0;
         msg_widget->alpha = 1.0f;

         msg_widget->dying = 0;
         msg_widget->expired = 0;

         msg_widget->expiration_timer = 0;
         msg_widget->task_ptr = task;
         msg_widget->expiration_timer_started = 0;

         msg_widget->msg_new = ((void*)0);
         msg_widget->msg_transition_animation = 0.0f;

         msg_widget->text_height = 0;

         if (msg_queue_has_icons)
         {
            msg_widget->unfolded = 0;
            msg_widget->unfolding = 0;
            msg_widget->unfold = 0.0f;
         }
         else
         {
            msg_widget->unfolded = 1;
            msg_widget->unfolding = 0;
            msg_widget->unfold = 1.0f;
         }

         if (task)
         {
            msg_widget->msg = strdup(title);
            msg_widget->msg_len = (unsigned)strlen(title);

            msg_widget->task_error = task->error;
            msg_widget->task_cancelled = task->cancelled;
            msg_widget->task_finished = task->finished;
            msg_widget->task_progress = task->progress;
            msg_widget->task_ident = task->ident;
            msg_widget->task_title_ptr = task->title;
            msg_widget->task_count = 1;

            msg_widget->unfolded = 1;

            msg_widget->width = font_driver_get_message_width(font_regular, title, msg_widget->msg_len, msg_queue_text_scale_factor) + simple_widget_padding/2;

            task->frontend_userdata = msg_widget;

            msg_widget->hourglass_rotation = 0;
         }
         else
         {


            unsigned title_length = (unsigned)strlen(title);
            char *msg = strdup(title);
            unsigned width = msg_queue_default_rect_width;
            unsigned text_width = font_driver_get_message_width(font_regular, title, title_length, msg_queue_text_scale_factor);
            settings_t *settings = config_get_ptr();

            msg_widget->text_height = msg_queue_text_scale_factor * settings->floats.video_font_size;


            if (text_width > width)
            {
               if (text_width/2 > width)
               {
                  width = text_width/2;
                  width += 10 * msg_queue_glyph_width;
               }

               word_wrap(msg, msg, title_length/2 + 10, 0, 2);

               msg_widget->text_height *= 2.5f;
            }
            else
            {
               width = text_width;
               msg_widget->text_height *= 1.35f;
            }

            msg_widget->msg = msg;
            msg_widget->msg_len = (unsigned)strlen(msg);
            msg_widget->width = width + simple_widget_padding/2;
         }

         fifo_write(msg_queue, &msg_widget, sizeof(msg_widget));
      }

      else
      {
         if (msg_widget->expiration_timer_started)
         {
            menu_timer_kill(&msg_widget->expiration_timer);
            msg_widget->expiration_timer_started = 0;
         }

         if (task->title != msg_widget->task_title_ptr)
         {
            unsigned len = (unsigned)strlen(task->title);
            unsigned new_width = font_driver_get_message_width(font_regular, task->title, len, msg_queue_text_scale_factor);

            if (msg_widget->msg_new)
            {
               free(msg_widget->msg_new);
               msg_widget->msg_new = ((void*)0);
            }

            msg_widget->msg_new = strdup(task->title);
            msg_widget->msg_len = len;
            msg_widget->task_title_ptr = task->title;
            msg_widget->msg_transition_animation = 0;

            if (!task->alternative_look)
            {
               menu_animation_ctx_entry_t entry;

               entry.easing_enum = EASING_OUT_QUAD;
               entry.tag = (uintptr_t) msg_widget;
               entry.duration = MSG_QUEUE_ANIMATION_DURATION*2;
               entry.target_value = msg_queue_height/2.0f;
               entry.subject = &msg_widget->msg_transition_animation;
               entry.cb = msg_widget_msg_transition_animation_done;
               entry.userdata = msg_widget;

               menu_animation_push(&entry);
            }
            else
            {
               msg_widget_msg_transition_animation_done(msg_widget);
            }

            msg_widget->task_count++;

            msg_widget->width = new_width;
         }

         msg_widget->task_error = task->error;
         msg_widget->task_cancelled = task->cancelled;
         msg_widget->task_finished = task->finished;
         msg_widget->task_progress = task->progress;
      }
   }
}
