
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {char* f_fn; struct file_list* f_next; } ;


 scalar_t__ eq (int ,int ) ;
 struct file_list* ftab ;
 int tail (char*) ;

struct file_list *
fltail_lookup(char *file)
{
 struct file_list *fp;

 for (fp = ftab ; fp != 0; fp = fp->f_next) {
  if (eq(tail(fp->f_fn), tail(file)))
   return (fp);
 }
 return (0);
}
