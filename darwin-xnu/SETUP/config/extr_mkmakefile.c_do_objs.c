
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
 int strlen (char const*) ;
 char* tail (char const*) ;

void
do_objs(FILE *fp, const char *msg, int ext)
{
 struct file_list *tp;
 int lpos, len;
 char *cp;
 char och;
 const char *sp;

 fprintf(fp, "%s", msg);
 lpos = strlen(msg);
 for (tp = ftab; tp != 0; tp = tp->f_next) {
  if (tp->f_type == INVISIBLE)
   continue;




  cp = tp->f_fn + (len = strlen(tp->f_fn)) - 1;
  if (ext != -1 && *cp != ext)
   continue;
  else if (*cp == 'o') {
   if (len + lpos > 72) {
    lpos = 8;
    fprintf(fp, "\\\n\t");
   }
   put_source_file_name(fp, tp);
   fprintf(fp, " ");
   lpos += len + 1;
   continue;
  }
  sp = tail(tp->f_fn);
  cp = (char *)sp + (len = strlen(sp)) - 1;
  och = *cp;
  *cp = 'o';
  if (len + lpos > 72) {
   lpos = 8;
   fprintf(fp, "\\\n\t");
  }
  fprintf(fp, "%s ", sp);
  lpos += len + 1;
  *cp = och;
 }
 putc('\n', fp);
}
