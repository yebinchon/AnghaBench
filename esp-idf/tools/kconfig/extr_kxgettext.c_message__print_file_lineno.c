
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {char* option; struct file_line* files; } ;
struct file_line {char* file; int lineno; struct file_line* next; } ;


 int printf (char*,char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void message__print_file_lineno(struct message *self)
{
 struct file_line *fl = self->files;

 putchar('\n');
 if (self->option != ((void*)0))
  printf("# %s:00000\n", self->option);

 printf("#: %s:%d", fl->file, fl->lineno);
 fl = fl->next;

 while (fl != ((void*)0)) {
  printf(", %s:%d", fl->file, fl->lineno);
  fl = fl->next;
 }

 putchar('\n');
}
