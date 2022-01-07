
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void ff_memfree (
    void* mblock
)
{
    free(mblock);
}
