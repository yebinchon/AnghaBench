
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct http_t {int dummy; } ;
struct http_connection_t {int dummy; } ;
typedef scalar_t__ retro_time_t ;


 int NET_HTTP_GET_CONNECT_ERROR ;
 int NET_HTTP_GET_MALFORMED_URL ;
 int NET_HTTP_GET_OK ;
 int NET_HTTP_GET_TIMEOUT ;
 scalar_t__ cpu_features_get_time_usec () ;
 int free (int *) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;
 int net_http_connection_done (struct http_connection_t*) ;
 int net_http_connection_free (struct http_connection_t*) ;
 int net_http_connection_iterate (struct http_connection_t*) ;
 struct http_connection_t* net_http_connection_new (char const*,char*,int *) ;
 int * net_http_data (struct http_t*,size_t*,int) ;
 int net_http_delete (struct http_t*) ;
 struct http_t* net_http_new (struct http_connection_t*) ;
 int net_http_update (struct http_t*,int *,int *) ;

int net_http_get(const char **result, size_t *size, const char *url, retro_time_t *timeout)
{
   size_t length;
   uint8_t* data = ((void*)0);
   char* res = ((void*)0);
   int ret = NET_HTTP_GET_OK;
   struct http_t* http = ((void*)0);
   retro_time_t t0 = cpu_features_get_time_usec();
   struct http_connection_t *conn = net_http_connection_new(url, "GET", ((void*)0));

   *result = ((void*)0);


   if (!conn)
      goto error;


   while (!net_http_connection_iterate(conn)) {}


   if (!net_http_connection_done(conn))
   {
      ret = NET_HTTP_GET_MALFORMED_URL;
      goto error;
   }

   http = net_http_new(conn);


   if (!http)
   {
      ret = NET_HTTP_GET_CONNECT_ERROR;
      goto error;
   }

   while (!net_http_update(http, ((void*)0), ((void*)0)))
   {

      if (timeout && (cpu_features_get_time_usec() - t0) > *timeout)
      {
         ret = NET_HTTP_GET_TIMEOUT;
         goto error;
      }
   }

   data = net_http_data(http, &length, 0);

   if (data)
   {
      res = (char*)malloc(length + 1);


      if (!res)
         goto error;

      memcpy((void*)res, (void*)data, length);
      free(data);
      res[length] = 0;
      *result = res;
   }
   else
   {
      length = 0;
      *result = ((void*)0);
   }

   if (size)
      *size = length;

error:
   if (http)
      net_http_delete(http);

   if (conn)
      net_http_connection_free(conn);

   if (timeout)
   {
      t0 = cpu_features_get_time_usec() - t0;

      if (t0 < *timeout)
         *timeout -= t0;
      else
         *timeout = 0;
   }

   return ret;
}
