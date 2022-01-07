
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int LOG_ERROR (int *,char*) ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ malloc (size_t) ;
 int rtsp_merge_uris (int *,char const*,char const*,char**) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_parse_control_attribute( VC_CONTAINER_T *p_ctx,
      const char *attribute,
      const char *base_uri_str,
      char **p_control_uri_str)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;






   if (!*attribute || strcmp(attribute, "*") == 0)
   {
      size_t len = strlen(base_uri_str);

      *p_control_uri_str = (char *)malloc(len + 1);
      if (!*p_control_uri_str)
      {
         LOG_ERROR(p_ctx, "RTSP: Failed to allocate control URI");
         return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      }
      strncpy(*p_control_uri_str, base_uri_str, len);
   } else {
      status = rtsp_merge_uris(p_ctx, base_uri_str, attribute, p_control_uri_str);
   }

   return status;
}
