
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {scalar_t__ f_type; char* f_fn; struct file_list* f_next; } ;
typedef int FILE ;


 scalar_t__ INVISIBLE ;
 int fprintf (int *,char*,...) ;
 struct file_list* ftab ;
 int put_source_file_name (int *,struct file_list*) ;
 int putc (char,int *) ;
 int strlen (char*) ;

void
do_files(FILE *fp, const char *msg, char ext)
{
 struct file_list *tp;
 int lpos, len=0;

 fprintf(fp, "%s", msg);
 lpos = 8;
 for (tp = ftab; tp != 0; tp = tp->f_next) {
  if (tp->f_type == INVISIBLE)
   continue;
  if (tp->f_fn[strlen(tp->f_fn)-1] != ext)
   continue;





  lpos = 8;
  fprintf(fp, "\\\n\t");
  put_source_file_name(fp, tp);
  lpos += len + 1;
 }
 putc('\n', fp);
}
