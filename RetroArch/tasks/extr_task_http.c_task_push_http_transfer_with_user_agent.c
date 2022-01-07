
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_connection_t {int dummy; } ;
typedef int retro_task_callback_t ;


 struct http_connection_t* net_http_connection_new (char const*,char*,int *) ;
 int net_http_connection_set_user_agent (struct http_connection_t*,char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 void* task_push_http_transfer_generic (struct http_connection_t*,char const*,int,char const*,int ,void*) ;

void* task_push_http_transfer_with_user_agent(const char *url, bool mute,
   const char *type, const char* user_agent,
   retro_task_callback_t cb, void *user_data)
{
   struct http_connection_t* conn;

   if (string_is_empty(url))
      return ((void*)0);

   conn = net_http_connection_new(url, "GET", ((void*)0));
   if (!conn)
      return ((void*)0);

   if (user_agent != ((void*)0))
      net_http_connection_set_user_agent(conn, user_agent);


   return task_push_http_transfer_generic(conn, url, mute, type, cb, user_data);
}
