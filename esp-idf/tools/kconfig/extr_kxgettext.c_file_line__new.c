
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_line {char const* file; int lineno; int * next; } ;


 struct file_line* malloc (int) ;

__attribute__((used)) static struct file_line *file_line__new(const char *file, int lineno)
{
 struct file_line *self = malloc(sizeof(*self));

 if (self == ((void*)0))
  goto out;

 self->file = file;
 self->lineno = lineno;
 self->next = ((void*)0);
out:
 return self;
}
