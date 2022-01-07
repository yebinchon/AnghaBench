
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* basename (char*) ;
 int free (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *strippath(const char *fullfile)
{
  char *filename;
  char *base;
  filename = strdup(fullfile);

  if(!filename)
    return ((void*)0);
  base = strdup(basename(filename));

  free(filename);

  return base;
}
