
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _REENT ;
 void* _calloc_r (int ,size_t,size_t) ;

void* calloc(size_t n, size_t size)
{
    return _calloc_r(_REENT, n, size);
}
