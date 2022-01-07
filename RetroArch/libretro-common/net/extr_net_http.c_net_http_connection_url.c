
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_connection_t {char const* urlcopy; } ;



const char *net_http_connection_url(struct http_connection_t *conn)
{
   return conn->urlcopy;
}
