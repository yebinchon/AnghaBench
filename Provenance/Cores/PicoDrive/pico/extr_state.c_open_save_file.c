
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_DEFAULT_STRATEGY ;
 void* fopen (char const*,char*) ;
 void* gzopen (char const*,char*) ;
 int gzsetparams (void*,int,int ) ;
 int set_cbs (int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void *open_save_file(const char *fname, int is_save)
{
  int len = strlen(fname);
  void *afile = ((void*)0);

  if (len > 3 && strcmp(fname + len - 3, ".gz") == 0)
  {
    if ( (afile = gzopen(fname, is_save ? "wb" : "rb")) ) {
      set_cbs(1);
      if (is_save)
        gzsetparams(afile, 9, Z_DEFAULT_STRATEGY);
    }
  }
  else
  {
    if ( (afile = fopen(fname, is_save ? "wb" : "rb")) ) {
      set_cbs(0);
    }
  }

  return afile;
}
