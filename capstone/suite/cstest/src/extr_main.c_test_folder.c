
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_filename_ext (char*) ;
 int listdir (char const*,char***,int*) ;
 scalar_t__ strcmp (char*,int ) ;
 int test_file (char*) ;

__attribute__((used)) static void test_folder(const char *folder)
{
 char **files;
 int num_files, i;

 files = ((void*)0);
 num_files = 0;
 listdir(folder, &files, &num_files);
 for (i = 0; i < num_files; ++i) {
  if (strcmp("cs", get_filename_ext(files[i])))
   continue;
  test_file(files[i]);
 }
}
