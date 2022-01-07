
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fwrite (char*,int,int,int *) ;

__attribute__((used)) static int sixel_write(char *data, int size, void *priv)
{
   return fwrite(data, 1, size, (FILE*)priv);
}
