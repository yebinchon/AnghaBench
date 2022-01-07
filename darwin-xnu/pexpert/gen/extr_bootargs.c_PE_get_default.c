
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int DTEntry ;


 scalar_t__ DTGetProperty (int ,char const*,void**,unsigned int*) ;
 scalar_t__ DTLookupEntry (int *,char*,int *) ;
 int FALSE ;
 scalar_t__ IODTGetDefault (char const*,void*,unsigned int) ;
 int TRUE ;
 scalar_t__ kSuccess ;
 int memcpy (void*,void**,unsigned int) ;

boolean_t
PE_get_default(
 const char *property_name,
 void *property_ptr,
 unsigned int max_property)
{
 DTEntry dte;
 void **property_data;
 unsigned int property_size;




 if (kSuccess == DTLookupEntry(((void*)0), "/defaults", &dte)) {




  if (kSuccess != DTGetProperty(dte, property_name, (void **)&property_data, &property_size))
   return FALSE;






  if (property_size > max_property)
   return FALSE;




  memcpy(property_ptr, property_data, property_size);
  return TRUE;
 }




 return IODTGetDefault(property_name, property_ptr, max_property) ? FALSE : TRUE;
}
