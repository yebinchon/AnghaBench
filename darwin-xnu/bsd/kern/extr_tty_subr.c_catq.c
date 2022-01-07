
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clist {int dummy; } ;


 int getc (struct clist*) ;
 int putc (int,struct clist*) ;

void
catq(struct clist *from, struct clist *to)
{
 int c;

 while ((c = getc(from)) != -1)
  putc(c, to);
}
