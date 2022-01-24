#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ value; scalar_t__ name; } ;
typedef  TYPE_1__ VC_URI_QUERY_T ;
struct TYPE_5__ {scalar_t__ fragment; TYPE_1__* queries; scalar_t__ num_queries; scalar_t__ path; scalar_t__ port; scalar_t__ host; scalar_t__ userinfo; scalar_t__ scheme; } ;
typedef  TYPE_2__ VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fragment_reserved_chars ; 
 int /*<<< orphan*/  host_reserved_chars ; 
 int /*<<< orphan*/  path_reserved_chars ; 
 int /*<<< orphan*/  port_reserved_chars ; 
 int /*<<< orphan*/  query_reserved_chars ; 
 int /*<<< orphan*/  scheme_reserved_chars ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  userinfo_reserved_chars ; 

__attribute__((used)) static void FUNC2(const VC_URI_PARTS_T *p_uri, char *buffer, size_t buffer_size)
{
   uint32_t count;

   /* With no scheme, assume this is a plain path (without escaping) */
   if (!p_uri->scheme)
   {
      if (p_uri->path)
         FUNC1(buffer, p_uri->path, buffer_size);
      else
         buffer[0] = '\0';
      return;
   }

   buffer += FUNC0(p_uri->scheme, buffer, scheme_reserved_chars);
   *buffer++ = ':';

   if (p_uri->host)
   {
      *buffer++ = '/';
      *buffer++ = '/';
      if (p_uri->userinfo)
      {
         buffer += FUNC0(p_uri->userinfo, buffer, userinfo_reserved_chars);
         *buffer++ = '@';
      }
      buffer += FUNC0(p_uri->host, buffer, host_reserved_chars);
      if (p_uri->port)
      {
         *buffer++ = ':';
         buffer += FUNC0(p_uri->port, buffer, port_reserved_chars);
      }
   }

   if (p_uri->path)
      buffer += FUNC0(p_uri->path, buffer, path_reserved_chars);

   count = p_uri->num_queries;
   if (count)
   {
      VC_URI_QUERY_T * queries = p_uri->queries;

      *buffer++ = '?';
      while (count--)
      {
         buffer += FUNC0(queries->name, buffer, query_reserved_chars);

         if (queries->value)
         {
            *buffer++ = '=';
            buffer += FUNC0(queries->value, buffer, query_reserved_chars);
         }

         /* Add separator if there is another item to add */
         if (count)
            *buffer++ = '&';

         queries++;
      }
   }

   if (p_uri->fragment)
   {
      *buffer++ = '#';
      buffer += FUNC0(p_uri->fragment, buffer, fragment_reserved_chars);
   }

   *buffer = '\0';
}