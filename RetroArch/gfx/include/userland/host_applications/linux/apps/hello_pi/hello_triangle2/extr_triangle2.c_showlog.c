
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;


 int glGetShaderInfoLog (int,int,int *,char*) ;
 int printf (char*,int,char*) ;

__attribute__((used)) static void showlog(GLint shader)
{

   char log[1024];
   glGetShaderInfoLog(shader,sizeof log,((void*)0),log);
   printf("%d:shader:\n%s\n", shader, log);
}
