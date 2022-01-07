
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Free (void*) ;

void FreeSafe(void **addr)
{
 Free(*addr);
 *addr = ((void*)0);
}
