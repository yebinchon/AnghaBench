
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_int64_t ;
typedef int FILE ;


 int fseek (int *,int ,int) ;

__attribute__((used)) static int _fseek64_wrap(FILE *f,ogg_int64_t off,int whence){
  if(f==((void*)0))return(-1);
  return fseek(f,off,whence);
}
