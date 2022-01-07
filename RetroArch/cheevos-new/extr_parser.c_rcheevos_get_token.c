
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHEEVOS_JSON_KEY_ERROR ;
 int CHEEVOS_JSON_KEY_TOKEN ;
 int rcheevos_get_value (char const*,int ,char*,size_t) ;
 int string_is_empty (char*) ;

int rcheevos_get_token(const char* json, char* token, size_t length)
{
   rcheevos_get_value(json, CHEEVOS_JSON_KEY_ERROR, token, length);

   if (!string_is_empty(token))
      return -1;

   return rcheevos_get_value(json, CHEEVOS_JSON_KEY_TOKEN, token, length);
}
