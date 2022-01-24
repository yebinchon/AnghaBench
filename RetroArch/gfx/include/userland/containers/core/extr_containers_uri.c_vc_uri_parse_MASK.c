#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {void* fragment; void* path; void* scheme; } ;
typedef  TYPE_1__ VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_PORT_DELIMITERS ; 
 int /*<<< orphan*/  NETWORK_DELIMITERS ; 
 int /*<<< orphan*/  PATH_DELIMITERS ; 
 int /*<<< orphan*/  QUERY_DELIMITERS ; 
 int /*<<< orphan*/  SCHEME_DELIMITERS ; 
 void* FUNC0 (char const*,int) ; 
 int FUNC1 (char const*,void**) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

bool FUNC10( VC_URI_PARTS_T *p_uri, const char *uri )
{
   const char *marker;
   uint32_t len;

   if (!p_uri || !uri)
      return false;

   FUNC7(p_uri);

   /* URI = scheme ":" hier_part [ "?" query ] [ "#" fragment ] */

   /* Find end of scheme, or another separator */
   marker = FUNC8(uri, SCHEME_DELIMITERS);

   if (*marker == ':')
   {
      len = (marker - uri);
      if (FUNC2((int)*uri) && len == 1 && marker[1] == '\\')
      {
         /* Looks like a bare, absolute DOS/Windows filename with a drive letter */
         /* coverity[double_free] Pointer freed and set to NULL */
         bool ret = FUNC1(uri, &p_uri->path);
         FUNC9(p_uri);
         return ret;
      }

      p_uri->scheme = FUNC0(uri, len);
      if (!p_uri->scheme)
         goto error;

      FUNC6(p_uri->scheme);  /* Schemes should be handled case-insensitively */
      uri = marker + 1;
   }

   if (uri[0] == '/' && uri[1] == '/') /* hier-part includes authority */
   {
      const char *userinfo_end = NULL;

      /* authority = [ userinfo "@" ] host [ ":" port ] */
      uri += 2;

      marker = FUNC8(uri, NETWORK_DELIMITERS);
      if (*marker == '@')
      {
         userinfo_end = marker;
         marker = FUNC8(marker + 1, HOST_PORT_DELIMITERS);
      }

      if (!FUNC3(p_uri, uri, marker - uri, userinfo_end))
         goto error;
      uri = marker;
   }

   /* path */
   marker = FUNC8(uri, PATH_DELIMITERS);
   len = marker - uri;
   if (len)
   {
      p_uri->path = FUNC0(uri, len);
      FUNC9(p_uri);
      if (!p_uri->path)
         goto error;
   }

   /* query */
   if (*marker == '?')
   {
      uri = marker + 1;
      marker = FUNC8(uri, QUERY_DELIMITERS);
      if (!FUNC4(p_uri, uri, marker - uri))
         goto error;
   }

   /* fragment */
   if (*marker == '#')
   {
      uri = marker + 1;
      p_uri->fragment = FUNC0(uri, FUNC5(uri));
      if (!p_uri->fragment)
         goto error;
   }

   return true;

error:
   FUNC7(p_uri);
   return false;
}