#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct http_t {int dummy; } ;
struct http_connection_t {int dummy; } ;
typedef  scalar_t__ retro_time_t ;

/* Variables and functions */
 int NET_HTTP_GET_CONNECT_ERROR ; 
 int NET_HTTP_GET_MALFORMED_URL ; 
 int NET_HTTP_GET_OK ; 
 int NET_HTTP_GET_TIMEOUT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct http_connection_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct http_connection_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct http_connection_t*) ; 
 struct http_connection_t* FUNC7 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct http_t*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct http_t*) ; 
 struct http_t* FUNC10 (struct http_connection_t*) ; 
 int /*<<< orphan*/  FUNC11 (struct http_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC12(const char **result, size_t *size, const char *url, retro_time_t *timeout)
{
   size_t length;
   uint8_t* data                  = NULL;
   char* res                      = NULL;
   int ret                        = NET_HTTP_GET_OK;
   struct http_t* http            = NULL;
   retro_time_t t0                = FUNC0();
   struct http_connection_t *conn = FUNC7(url, "GET", NULL);

   *result = NULL;

   /* Error creating the connection descriptor. */
   if (!conn)
      goto error;

   /* Don't bother with timeouts here, it's just a string scan. */
   while (!FUNC6(conn)) {}

   /* Error finishing the connection descriptor. */
   if (!FUNC4(conn))
   {
      ret = NET_HTTP_GET_MALFORMED_URL;
      goto error;
   }

   http = FUNC10(conn);

   /* Error connecting to the endpoint. */
   if (!http)
   {
      ret = NET_HTTP_GET_CONNECT_ERROR;
      goto error;
   }

   while (!FUNC11(http, NULL, NULL))
   {
      /* Timeout error. */
      if (timeout && (FUNC0() - t0) > *timeout)
      {
         ret = NET_HTTP_GET_TIMEOUT;
         goto error;
      }
   }

   data = FUNC8(http, &length, false);

   if (data)
   {
      res = (char*)FUNC2(length + 1);

      /* Allocation error. */
      if (!res)
         goto error;

      FUNC3((void*)res, (void*)data, length);
      FUNC1(data);
      res[length] = 0;
      *result = res;
   }
   else
   {
      length = 0;
      *result = NULL;
   }

   if (size)
      *size = length;

error:
   if (http)
      FUNC9(http);

   if (conn)
      FUNC5(conn);

   if (timeout)
   {
      t0 = FUNC0() - t0;

      if (t0 < *timeout)
         *timeout -= t0;
      else
         *timeout = 0;
   }

   return ret;
}