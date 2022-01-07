
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ssl; } ;
struct http_connection_t {char* location; char* scan; int port; TYPE_1__ sock_state; } ;


 int isdigit (int) ;
 scalar_t__ strtoul (char*,char**,int) ;

bool net_http_connection_done(struct http_connection_t *conn)
{
   char **location = ((void*)0);

   if (!conn)
      return 0;

   location = &conn->location;

   if (*conn->scan == '\0')
      return 0;
   *conn->scan = '\0';

   if (conn->port == 0)
   {
      if (conn->sock_state.ssl)
         conn->port = 443;
      else
         conn->port = 80;
   }

   if (*conn->scan == ':')
   {
      if (!isdigit((int)conn->scan[1]))
         return 0;

      conn->port = (int)strtoul(conn->scan + 1, &conn->scan, 10);

      if (*conn->scan != '/')
         return 0;
   }

   *location = conn->scan + 1;

   return 1;
}
