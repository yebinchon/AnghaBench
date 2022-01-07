
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ THREAD_ID ;

__attribute__((used)) static unsigned long id_function(void)
{
  return ((unsigned long)THREAD_ID);
}
