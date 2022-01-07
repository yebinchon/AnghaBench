
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cs_close (void*) ;
 int free (void*) ;

__attribute__((used)) static int teardown_MC(void **state)
{
 cs_close(*state);
 free(*state);
 return 0;
}
