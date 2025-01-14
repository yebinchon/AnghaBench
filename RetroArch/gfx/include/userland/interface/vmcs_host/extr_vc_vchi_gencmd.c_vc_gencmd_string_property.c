
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (int) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char*,char const*,size_t) ;

int vc_gencmd_string_property(char *text, const char *property, char **value, int *length) {



   int state = 0;
   int delimiter = 1, match = 0, len = (int)strlen(property);
   char *prop_start=text, *value_start=text;
   for (; *text; text++) {
      int ch = *text;
      switch (state) {
      case 0:
         if (delimiter) prop_start = text;
         if (isspace(ch)) delimiter = 1;
         else if (ch == '=') {
            delimiter = 1;
            match = (text-prop_start==len && strncmp(prop_start, property, (size_t)(text-prop_start))==0);
            state = 1;
         }
         else delimiter = 0;
         break;
      case 1:
         if (delimiter) value_start = text;
         if (isspace(ch)) {
            if (match) goto success;
            delimiter = 1;
            state = 0;
         }
         else if (delimiter && ch == '"') {
            delimiter = 1;
            state = 2;
         }
         else delimiter = 0;
         break;
      case 2:
         if (delimiter) value_start = text;
         if (ch == '"') {
            if (match) goto success;
            delimiter = 1;
            state = 0;
         }
         else delimiter = 0;
         break;
      }
   }
   if (match) goto success;
   return 0;
success:
   *value = value_start;
   *length = text - value_start;
   return 1;
}
