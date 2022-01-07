
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_connection_t {char* scan; } ;



bool net_http_connection_iterate(struct http_connection_t *conn)
{
   if (!conn)
      return 0;

   while (*conn->scan != '/' && *conn->scan != ':' && *conn->scan != '\0')
      conn->scan++;

   return 1;
}
