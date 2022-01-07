
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HTTP_MAJOR_VERSION ;
 unsigned int HTTP_MINOR_VERSION ;
 unsigned int HTTP_STATUS_OK ;
 unsigned int HTTP_STATUS_PARTIAL_CONTENT ;
 int LOG_ERROR (int *,char*,...) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static bool io_http_successful_response_status(const char *status_line)
{
   unsigned int major_version, minor_version, status_code;


   if (sscanf(status_line, "HTTP/%u.%u %u", &major_version, &minor_version, &status_code) != 3)
   {
      LOG_ERROR(((void*)0), "HTTP: Invalid response status line:\n%s", status_line);
      return 0;
   }

   if (major_version != HTTP_MAJOR_VERSION || minor_version != HTTP_MINOR_VERSION)
   {
      LOG_ERROR(((void*)0), "HTTP: Unexpected response HTTP version: %u.%u", major_version, minor_version);
      return 0;
   }

   if (status_code != HTTP_STATUS_OK && status_code != HTTP_STATUS_PARTIAL_CONTENT)
   {
      LOG_ERROR(((void*)0), "HTTP: Response status unsuccessful:\n%s", status_line);
      return 0;
   }

   return 1;
}
