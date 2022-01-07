
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taosCleanUpStrHashWithFp (void*,int *) ;

void taosCleanUpStrHash(void *handle) { taosCleanUpStrHashWithFp(handle, ((void*)0)); }
