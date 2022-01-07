
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* container; scalar_t__ extension; } ;


 TYPE_1__* extension_container_mapping ;
 int strcasecmp (char const*,scalar_t__) ;

__attribute__((used)) static const char* container_for_fileext(const char *fileext)
{
   int i;

   for( i = 0; fileext && extension_container_mapping[i].extension; i++ )
   {
      if (!strcasecmp( fileext, extension_container_mapping[i].extension ))
         return extension_container_mapping[i].container;
   }

   return fileext;
}
