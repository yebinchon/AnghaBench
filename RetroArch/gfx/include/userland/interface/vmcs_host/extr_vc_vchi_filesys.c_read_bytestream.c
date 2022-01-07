
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void read_bytestream(void *a, char *b, int n)
{
   int i;
   for (i=0;i<n;i++) {
      ((char *)a)[i] = b[i];
   }
}
