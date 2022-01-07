
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fm68k_emulate (int ,int ) ;
 int initialised ;
 int puts (char*) ;

void fm68k_init(void)
{




    if (!initialised)
     fm68k_emulate(0, 0);




}
