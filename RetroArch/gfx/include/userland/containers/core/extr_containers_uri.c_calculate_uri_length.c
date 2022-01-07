
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ value; scalar_t__ name; } ;
typedef TYPE_1__ VC_URI_QUERY_T ;
struct TYPE_5__ {scalar_t__ fragment; TYPE_1__* queries; scalar_t__ num_queries; scalar_t__ path; scalar_t__ port; scalar_t__ userinfo; scalar_t__ host; scalar_t__ scheme; } ;
typedef TYPE_2__ VC_URI_PARTS_T ;


 scalar_t__ escaped_length (scalar_t__,int ) ;
 int fragment_reserved_chars ;
 int host_reserved_chars ;
 int path_reserved_chars ;
 int port_reserved_chars ;
 int query_reserved_chars ;
 int scheme_reserved_chars ;
 scalar_t__ strlen (scalar_t__) ;
 int userinfo_reserved_chars ;

__attribute__((used)) static uint32_t calculate_uri_length(const VC_URI_PARTS_T *p_uri)
{
   uint32_t length = 0;
   uint32_t count;


   if (!p_uri->scheme)
      return p_uri->path ? strlen(p_uri->path) : 0;

   length += escaped_length(p_uri->scheme, scheme_reserved_chars);
   length++;

   if (p_uri->host)
   {
      length += escaped_length(p_uri->host, host_reserved_chars) + 2;
      if (p_uri->userinfo)
         length += escaped_length(p_uri->userinfo, userinfo_reserved_chars) + 1;
      if (p_uri->port)
         length += escaped_length(p_uri->port, port_reserved_chars) + 1;
   }

   if (p_uri->path)
      length += escaped_length(p_uri->path, path_reserved_chars);

   count = p_uri->num_queries;
   if (count)
   {
      VC_URI_QUERY_T * queries = p_uri->queries;

      while (count--)
      {

         length += escaped_length(queries->name, query_reserved_chars) + 1;


         if (queries->value)
            length += escaped_length(queries->value, query_reserved_chars) + 1;
         queries++;
      }
   }

   if (p_uri->fragment)
      length += escaped_length(p_uri->fragment, fragment_reserved_chars) + 1;

   return length;
}
