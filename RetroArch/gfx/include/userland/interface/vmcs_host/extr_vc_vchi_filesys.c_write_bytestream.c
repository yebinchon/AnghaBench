
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void write_bytestream(void *a, char *b, int n)
{
   int i;
   for (i=0;i<n;i++) {
      b[i] = ((char *)a)[i];
   }
   for (;i<4;i++) {
      b[i] = 0;
   }
}
