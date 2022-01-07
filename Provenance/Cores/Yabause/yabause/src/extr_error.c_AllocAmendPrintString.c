
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YuiErrorMsg (char*) ;
 int free (char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void AllocAmendPrintString(const char *string1, const char *string2)
{
   char *string;

   if ((string = (char *)malloc(strlen(string1) + strlen(string2) + 2)) == ((void*)0))
      return;

   sprintf(string, "%s%s\n", string1, string2);
   YuiErrorMsg(string);

   free(string);
}
