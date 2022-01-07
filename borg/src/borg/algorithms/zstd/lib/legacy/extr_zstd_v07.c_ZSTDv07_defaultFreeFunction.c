
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static void ZSTDv07_defaultFreeFunction(void* opaque, void* address)
{
    (void)opaque;

    free(address);
}
