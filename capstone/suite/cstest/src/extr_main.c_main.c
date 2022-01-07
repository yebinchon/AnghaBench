
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e_flag ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int printf (char*,char*) ;
 int test_file (int ) ;
 int test_folder (int ) ;

int main(int argc, char *argv[])
{
 int opt, flag;

 flag = 0;
 e_flag = 0;

 while ((opt = getopt(argc, argv, "ef:d:")) > 0) {
  switch (opt) {
   case 'f':
    test_file(optarg);
    flag = 1;
    break;
   case 'd':
    test_folder(optarg);
    flag = 1;
    break;
   case 'e':
    e_flag = 1;
    break;
   default:
    printf("Usage: %s [-e] [-f <file_name.cs>] [-d <directory>]\n", argv[0]);
    exit(-1);
  }
 }

 if (flag == 0) {
  printf("Usage: %s [-e] [-f <file_name.cs>] [-d <directory>]\n", argv[0]);
  exit(-1);
 }

 return 0;
}
