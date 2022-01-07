
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_callback_t ;


 int net_http_connection_new (char const*,char*,char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 void* task_push_http_transfer_generic (int ,char const*,int,char const*,int ,void*) ;

void* task_push_http_post_transfer(const char *url,
      const char *post_data, bool mute,
      const char *type, retro_task_callback_t cb, void *user_data)
{
   if (string_is_empty(url))
      return ((void*)0);
   return task_push_http_transfer_generic(
         net_http_connection_new(url, "POST", post_data),
         url, mute, type, cb, user_data);
}
