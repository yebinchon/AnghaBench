
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int ParameterError ;
typedef int FILE ;


 int Curl_safefree (char*) ;
 int PARAM_NO_MEM ;
 int PARAM_OK ;
 scalar_t__ SIZE_T_MAX ;
 scalar_t__ fgets (char*,int,int *) ;
 char* malloc (size_t) ;
 char* realloc (char*,size_t) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

ParameterError file2string(char **bufp, FILE *file)
{
  char *string = ((void*)0);
  if(file) {
    char *ptr;
    size_t alloc = 512;
    size_t alloc_needed;
    char buffer[256];
    size_t stringlen = 0;
    string = malloc(alloc);
    if(!string)
      return PARAM_NO_MEM;

    while(fgets(buffer, sizeof(buffer), file)) {
      size_t buflen;
      ptr = strchr(buffer, '\r');
      if(ptr)
        *ptr = '\0';
      ptr = strchr(buffer, '\n');
      if(ptr)
        *ptr = '\0';
      buflen = strlen(buffer);
      alloc_needed = stringlen + buflen + 1;
      if(alloc < alloc_needed) {

        if(alloc >= (size_t)SIZE_T_MAX/2) {
          Curl_safefree(string);
          return PARAM_NO_MEM;
        }



        alloc *= 2;
        ptr = realloc(string, alloc);
        if(!ptr) {
          Curl_safefree(string);
          return PARAM_NO_MEM;
        }
        string = ptr;
      }
      strcpy(string + stringlen, buffer);
      stringlen += buflen;
    }
  }
  *bufp = string;
  return PARAM_OK;
}
