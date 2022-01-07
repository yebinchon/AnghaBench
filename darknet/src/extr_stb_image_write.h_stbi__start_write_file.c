
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__write_context ;
typedef int FILE ;


 int * fopen (char const*,char*) ;
 scalar_t__ fopen_s (int **,char const*,char*) ;
 int stbi__start_write_callbacks (int *,int ,void*) ;
 int stbi__stdio_write ;

__attribute__((used)) static int stbi__start_write_file(stbi__write_context *s, const char *filename)
{
   FILE *f;




   f = fopen(filename, "wb");

   stbi__start_write_callbacks(s, stbi__stdio_write, (void *) f);
   return f != ((void*)0);
}
