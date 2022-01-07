
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void output_file_close(FILE *f){
  if( f && f!=stdout && f!=stderr ) fclose(f);
}
