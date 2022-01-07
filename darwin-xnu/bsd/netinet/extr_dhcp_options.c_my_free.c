
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_TEMP ;
 int _FREE (void*,int ) ;

__attribute__((used)) static __inline__ void
my_free(void * ptr)
{
    _FREE(ptr, M_TEMP);
}
