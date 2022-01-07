
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {char* option; struct message* files; int * next; int * msg; } ;


 struct message* file_line__new (char const*,int) ;
 int free (struct message*) ;
 struct message* malloc (int) ;
 int * strdup (char const*) ;

__attribute__((used)) static struct message *message__new(const char *msg, char *option,
        const char *file, int lineno)
{
 struct message *self = malloc(sizeof(*self));

 if (self == ((void*)0))
  goto out;

 self->files = file_line__new(file, lineno);
 if (self->files == ((void*)0))
  goto out_fail;

 self->msg = strdup(msg);
 if (self->msg == ((void*)0))
  goto out_fail_msg;

 self->option = option;
 self->next = ((void*)0);
out:
 return self;
out_fail_msg:
 free(self->files);
out_fail:
 free(self);
 self = ((void*)0);
 goto out;
}
