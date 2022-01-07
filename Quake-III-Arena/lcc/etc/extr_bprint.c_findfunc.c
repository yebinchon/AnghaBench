
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct func {char* name; TYPE_1__ count; struct func* link; } ;
struct file {char* name; struct func* funcs; } ;


 struct file* findfile (char*) ;

int findfunc(char *name, char *file) {
 static struct file *cursor;

 if (cursor == 0 || cursor->name != file)
  cursor = findfile(file);
 if (cursor) {
  struct func *p;
  for (p = cursor->funcs; p; p = p->link)
   if (p->name == name)
    return p->count.count;
 }
 return -1;
}
