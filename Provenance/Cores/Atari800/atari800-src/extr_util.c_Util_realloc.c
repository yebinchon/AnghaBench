
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_ErrExit () ;
 int exit (int) ;
 int printf (char*) ;
 void* realloc (void*,size_t) ;

void *Util_realloc(void *ptr, size_t size)
{
 ptr = realloc(ptr, size);
 if (ptr == ((void*)0)) {
  Atari800_ErrExit();
  printf("Fatal error: out of memory\n");
  exit(1);
 }
 return ptr;
}
