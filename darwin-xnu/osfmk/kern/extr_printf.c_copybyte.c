
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
copybyte(int c, void *arg)
{






 char** p = arg;
 **p = c;
 (*p)++;
}
