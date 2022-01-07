
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct linuxraw_joypad {int dummy; } ;
struct inotify_event {scalar_t__ name; int mask; scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct epoll_event {TYPE_1__ data; } ;
typedef int path ;
struct TYPE_7__ {int ident; } ;
struct TYPE_6__ {int fd; char* ident; int axes; scalar_t__ buttons; } ;


 scalar_t__ EINTR ;
 int IN_ATTRIB ;
 int IN_CREATE ;
 int IN_DELETE ;
 int MAX_USERS ;
 int NAME_MAX ;
 int PATH_MAX_LENGTH ;
 scalar_t__ calloc (int,size_t) ;
 int close (int) ;
 int epoll_wait (int ,struct epoll_event*,int,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 int input_autoconfigure_connect (char*,int *,int ,unsigned int,int ,int ) ;
 int input_autoconfigure_disconnect (unsigned int,char*) ;
 int linuxraw_epoll ;
 scalar_t__ linuxraw_hotplug ;
 int linuxraw_inotify ;
 TYPE_4__ linuxraw_joypad ;
 scalar_t__ linuxraw_joypad_init_pad (char*,TYPE_2__*) ;
 int linuxraw_joypad_name (unsigned int) ;
 TYPE_2__* linuxraw_pads ;
 int linuxraw_poll_pad (struct linuxraw_joypad*) ;
 int memset (int ,int ,int) ;
 int read (int ,char*,size_t) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int string_is_empty (char*) ;
 scalar_t__ strstr (scalar_t__,char*) ;
 unsigned int strtoul (scalar_t__,int *,int ) ;

__attribute__((used)) static void linuxraw_joypad_poll(void)
{
   int i, ret;
   struct epoll_event events[MAX_USERS + 1];

retry:
   ret = epoll_wait(linuxraw_epoll, events, MAX_USERS + 1, 0);
   if (ret < 0 && errno == EINTR)
      goto retry;

   for (i = 0; i < ret; i++)
   {
      struct linuxraw_joypad *ptr = (struct linuxraw_joypad*)
         events[i].data.ptr;

      if (ptr)
         linuxraw_poll_pad(ptr);
      else
      {

         int j, rc;
         size_t event_size = sizeof(struct inotify_event) + NAME_MAX + 1;
         uint8_t *event_buf = (uint8_t*)calloc(1, event_size);

         while ((rc = read(linuxraw_inotify, event_buf, event_size)) >= 0)
         {
            struct inotify_event *event = (struct inotify_event*)&event_buf[0];

            event_buf[rc-1] = '\0';



            for (j = 0; j < rc; j += event->len + sizeof(struct inotify_event))
            {
               unsigned idx;

               event = (struct inotify_event*)&event_buf[j];

               if (strstr(event->name, "js") != event->name)
                  continue;

               idx = strtoul(event->name + 2, ((void*)0), 0);
               if (idx >= MAX_USERS)
                  continue;

               if (event->mask & IN_DELETE)
               {
                  if (linuxraw_pads[idx].fd >= 0)
                  {
                     if (linuxraw_hotplug)
                        input_autoconfigure_disconnect(idx,
                              linuxraw_pads[idx].ident);

                     close(linuxraw_pads[idx].fd);
                     linuxraw_pads[idx].buttons = 0;
                     memset(linuxraw_pads[idx].axes, 0,
                           sizeof(linuxraw_pads[idx].axes));
                     linuxraw_pads[idx].fd = -1;
                     *linuxraw_pads[idx].ident = '\0';

                     input_autoconfigure_connect(
                           ((void*)0),
                           ((void*)0),
                           linuxraw_joypad_name(idx),
                           idx,
                           0,
                           0);
                  }
               }


               else if (event->mask & (IN_CREATE | IN_ATTRIB))
               {
                  char path[PATH_MAX_LENGTH];

                  path[0] = '\0';

                  snprintf(path, sizeof(path), "/dev/input/%s", event->name);

                  if ( !string_is_empty(linuxraw_pads[idx].ident)
                        && linuxraw_joypad_init_pad(path, &linuxraw_pads[idx]))
                     input_autoconfigure_connect(
                           linuxraw_pads[idx].ident,
                           ((void*)0),
                           linuxraw_joypad.ident,
                           idx,
                           0,
                           0);
               }
            }
         }

         free(event_buf);
      }
   }
}
