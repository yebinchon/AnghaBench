
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {char* name; struct file* link; } ;


 struct file* filelist ;

__attribute__((used)) static struct file *findfile(char *name) {
 struct file *p;

 for (p = filelist; p; p = p->link)
  if (p->name == name)
   return p;
 return 0;
}
