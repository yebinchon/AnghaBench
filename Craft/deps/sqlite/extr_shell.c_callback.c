
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int shell_callback (void*,int,char**,char**,int *) ;

__attribute__((used)) static int callback(void *pArg, int nArg, char **azArg, char **azCol){

  return shell_callback(pArg, nArg, azArg, azCol, ((void*)0));
}
