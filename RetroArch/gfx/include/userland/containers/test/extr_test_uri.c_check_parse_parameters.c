
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_URI_PARTS_T ;


 int LOG_ERROR (int *,char*) ;
 scalar_t__ vc_uri_parse (int *,int *) ;

__attribute__((used)) static int check_parse_parameters(VC_URI_PARTS_T *uri)
{
   int error_count = 0;

   if (vc_uri_parse( uri, ((void*)0) ))
   {
      LOG_ERROR(((void*)0), "Parsing NULL URI failed");
      error_count++;
   }

   return error_count;
}
