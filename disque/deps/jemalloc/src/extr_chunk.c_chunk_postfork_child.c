
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chunk_dss_postfork_child () ;

void
chunk_postfork_child(void)
{

 chunk_dss_postfork_child();
}
