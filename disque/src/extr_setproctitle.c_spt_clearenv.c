
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clearenv () ;
 int errno ;
 char** malloc (int) ;

__attribute__((used)) static int spt_clearenv(void) {





 extern char **environ;
 static char **tmp;

 if (!(tmp = malloc(sizeof *tmp)))
  return errno;

 tmp[0] = ((void*)0);
 environ = tmp;

 return 0;

}
