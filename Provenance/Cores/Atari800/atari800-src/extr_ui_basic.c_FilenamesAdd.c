
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILENAMES_INITIAL_SIZE ;
 scalar_t__ Util_realloc (void*,int) ;
 char const** filenames ;
 int n_filenames ;

__attribute__((used)) static void FilenamesAdd(const char *filename)
{
 if (n_filenames >= FILENAMES_INITIAL_SIZE && (n_filenames & (n_filenames - 1)) == 0) {

  filenames = (const char **) Util_realloc((void *) filenames, 2 * n_filenames * sizeof(const char *));
 }
 filenames[n_filenames++] = filename;
}
