
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParameterError ;
typedef int FILE ;


 int Curl_safefree (char*) ;
 int PARAM_NO_MEM ;
 int PARAM_OK ;
 size_t fread (char*,int,size_t,int *) ;
 char* realloc (char*,size_t) ;

ParameterError file2memory(char **bufp, size_t *size, FILE *file)
{
  char *newbuf;
  char *buffer = ((void*)0);
  size_t nused = 0;

  if(file) {
    size_t nread;
    size_t alloc = 512;
    do {
      if(!buffer || (alloc == nused)) {

        if(alloc + 1 > ((size_t)-1)/2) {
          Curl_safefree(buffer);
          return PARAM_NO_MEM;
        }
        alloc *= 2;

        newbuf = realloc(buffer, alloc + 1);
        if(!newbuf) {
          Curl_safefree(buffer);
          return PARAM_NO_MEM;
        }
        buffer = newbuf;
      }
      nread = fread(buffer + nused, 1, alloc-nused, file);
      nused += nread;
    } while(nread);

    buffer[nused] = '\0';

    if(alloc != nused) {
      newbuf = realloc(buffer, nused + 1);
      if(!newbuf) {
        Curl_safefree(buffer);
        return PARAM_NO_MEM;
      }
      buffer = newbuf;
    }

    if(!nused) {
      Curl_safefree(buffer);
    }
  }
  *size = nused;
  *bufp = buffer;
  return PARAM_OK;
}
