
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ReleaseMutex (void*) ;

__attribute__((used)) static void d3d11va_default_unlock(void *ctx)
{
    ReleaseMutex(ctx);
}
