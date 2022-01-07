
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {char* f_fn; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;

void
put_source_file_name(FILE *fp, struct file_list *tp)
{
 if ((tp->f_fn[0] == '.') && (tp->f_fn[1] == '/'))
  fprintf(fp, "%s ", tp->f_fn);
  else
  fprintf(fp, "$(SOURCE_DIR)/%s ", tp->f_fn);
}
