
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_URI_PARTS_T ;
struct TYPE_3__ {int merged; int relative; int base; } ;
typedef TYPE_1__ MERGE_URI_T ;


 int LOG_ERROR (int *,char*) ;
 int LOG_INFO (int *,char*,int ,int ,int ) ;
 int check_uri (int *,int ) ;
 int vc_uri_clear (int *) ;
 int * vc_uri_create () ;
 int vc_uri_merge (int *,int *) ;
 int vc_uri_parse (int *,int ) ;
 int vc_uri_release (int *) ;

__attribute__((used)) static int test_merging_uri(VC_URI_PARTS_T *uri, MERGE_URI_T *uri_data)
{
   VC_URI_PARTS_T *base_uri;

   LOG_INFO(((void*)0), "Base <%s>, relative <%s>, expect <%s>", uri_data->base, uri_data->relative, uri_data->merged);

   vc_uri_clear(uri);
   base_uri = vc_uri_create();
   if (!base_uri)
   {
      LOG_ERROR(((void*)0), "*** Failed to allocate base URI structure");
      return 1;
   }

   if (!vc_uri_parse(base_uri, uri_data->base))
   {
      LOG_ERROR(((void*)0), "*** Failed to parse base URI structure");
      return 1;
   }
   if (!vc_uri_parse(uri, uri_data->relative))
   {
      LOG_ERROR(((void*)0), "*** Failed to parse relative URI structure");
      return 1;
   }

   if (!vc_uri_merge(base_uri, uri))
   {
      LOG_ERROR(((void*)0), "*** Failed to merge base and relative URIs");
      return 1;
   }

   vc_uri_release(base_uri);

   return check_uri(uri, uri_data->merged);
}
