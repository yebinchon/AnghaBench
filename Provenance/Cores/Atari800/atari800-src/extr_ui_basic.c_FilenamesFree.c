
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* filenames ;
 int free (void*) ;
 size_t n_filenames ;

__attribute__((used)) static void FilenamesFree(void)
{
 while (n_filenames > 0)
  free((void *) filenames[--n_filenames]);
 free((void *) filenames);
}
