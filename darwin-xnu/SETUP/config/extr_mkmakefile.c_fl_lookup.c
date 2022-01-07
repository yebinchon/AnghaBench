
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {int f_fn; struct file_list* f_next; } ;


 scalar_t__ eq (int ,char*) ;
 struct file_list* ftab ;

struct file_list *
fl_lookup(char *file)
{
 struct file_list *fp;

 for (fp = ftab ; fp != 0; fp = fp->f_next) {
  if (eq(fp->f_fn, file))
   return (fp);
 }
 return (0);
}
