
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int VC_URI_PARTS_T ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;


 int LOG_ERROR (int *,char*,int) ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ malloc (size_t) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;
 size_t vc_uri_build (int *,char*,size_t) ;
 int * vc_uri_create () ;
 int vc_uri_merge (int *,int *) ;
 int vc_uri_parse (int *,char const*) ;
 int vc_uri_release (int *) ;
 int * vc_uri_scheme (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_merge_uris( VC_CONTAINER_T *p_ctx,
      const char *base_uri_str,
      const char *relative_uri_str,
      char **p_merged_uri_str)
{
   VC_URI_PARTS_T *base_uri = ((void*)0);
   VC_URI_PARTS_T *relative_uri = ((void*)0);
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   uint32_t merged_size;

   *p_merged_uri_str = ((void*)0);
   relative_uri = vc_uri_create();
   if (!relative_uri) goto tidy_up;
   if (!vc_uri_parse(relative_uri, relative_uri_str))
   {
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }

   if (vc_uri_scheme(relative_uri) != ((void*)0))
   {

      size_t len = strlen(relative_uri_str);

      *p_merged_uri_str = (char *)malloc(len + 1);
      if (!*p_merged_uri_str) goto tidy_up;

      strncpy(*p_merged_uri_str, relative_uri_str, len);
      status = VC_CONTAINER_SUCCESS;
      goto tidy_up;
   }

   base_uri = vc_uri_create();
   if (!base_uri) goto tidy_up;
   if (!vc_uri_parse(base_uri, base_uri_str))
   {
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }


   if (!vc_uri_merge(base_uri, relative_uri)) goto tidy_up;

   merged_size = vc_uri_build(relative_uri, ((void*)0), 0) + 1;
   *p_merged_uri_str = (char *)malloc(merged_size);
   if (!*p_merged_uri_str) goto tidy_up;

   vc_uri_build(relative_uri, *p_merged_uri_str, merged_size);

   status = VC_CONTAINER_SUCCESS;

tidy_up:
   if (base_uri) vc_uri_release(base_uri);
   if (relative_uri) vc_uri_release(relative_uri);
   if (status != VC_CONTAINER_SUCCESS)
      LOG_ERROR(p_ctx, "RTSP: Error merging URIs: %d", (int)status);
   return status;
}
