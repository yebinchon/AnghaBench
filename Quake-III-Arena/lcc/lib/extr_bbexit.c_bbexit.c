
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* link; } ;
typedef int FILE ;


 TYPE_1__* _bblist ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int profout (TYPE_1__*,int *) ;
 TYPE_1__ tail ;

__attribute__((used)) static void bbexit(void) {
 FILE *fp;

 if (_bblist != &tail && (fp = fopen("prof.out", "a"))) {
  for ( ; _bblist != &tail; _bblist = _bblist->link)
   profout(_bblist, fp);
  fclose(fp);
 }
}
