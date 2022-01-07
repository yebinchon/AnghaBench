
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACClose () ;
 int ACFinalize () ;

__attribute__((used)) static void deinit_network(void)
{
   ACClose();
   ACFinalize();
}
