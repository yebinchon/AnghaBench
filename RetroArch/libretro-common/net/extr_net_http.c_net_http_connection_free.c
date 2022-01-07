
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_connection_t {struct http_connection_t* useragentcopy; struct http_connection_t* postdatacopy; struct http_connection_t* contenttypecopy; struct http_connection_t* methodcopy; struct http_connection_t* urlcopy; } ;


 int free (struct http_connection_t*) ;

void net_http_connection_free(struct http_connection_t *conn)
{
   if (!conn)
      return;

   if (conn->urlcopy)
      free(conn->urlcopy);

   if (conn->methodcopy)
      free(conn->methodcopy);

   if (conn->contenttypecopy)
      free(conn->contenttypecopy);

   if (conn->postdatacopy)
      free(conn->postdatacopy);

   if (conn->useragentcopy)
      free(conn->useragentcopy);

   conn->urlcopy = ((void*)0);
   conn->methodcopy = ((void*)0);
   conn->contenttypecopy = ((void*)0);
   conn->postdatacopy = ((void*)0);
   conn->useragentcopy = ((void*)0);

   free(conn);
}
