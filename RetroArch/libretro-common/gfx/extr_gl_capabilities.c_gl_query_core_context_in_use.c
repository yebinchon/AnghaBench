
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_core_context ;

bool gl_query_core_context_in_use(void)
{
   return gl_core_context;
}
