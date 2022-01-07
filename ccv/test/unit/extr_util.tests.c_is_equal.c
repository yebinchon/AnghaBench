
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int is_equal(const void* r1, const void* r2, void* data)
{
 int a = *(int*)r1;
 int b = *(int*)r2;
 return a == b;
}
