
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_connection_t {int * useragentcopy; } ;


 int free (int *) ;
 int * strdup (char const*) ;

void net_http_connection_set_user_agent(struct http_connection_t* conn, const char* user_agent)
{
   if (conn->useragentcopy)
      free(conn->useragentcopy);

   conn->useragentcopy = user_agent ? strdup(user_agent) : ((void*)0);
}
