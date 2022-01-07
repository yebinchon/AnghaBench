
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;







 int errno ;
 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void show_dir_errno(FILE *errors, const char *name)
{
  switch(errno) {

  case 132:
    fprintf(errors, "You don't have permission to create %s.\n", name);
    break;


  case 130:
    fprintf(errors, "The directory name %s is too long.\n", name);
    break;


  case 128:
    fprintf(errors, "%s resides on a read-only file system.\n", name);
    break;


  case 129:
    fprintf(errors, "No space left on the file system that will "
            "contain the directory %s.\n", name);
    break;


  case 131:
    fprintf(errors, "Cannot create directory %s because you "
            "exceeded your quota.\n", name);
    break;

  default :
    fprintf(errors, "Error creating directory %s.\n", name);
    break;
  }
}
