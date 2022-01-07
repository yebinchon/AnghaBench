
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __appInit () ;
 int __libc_init_array () ;
 int __libctru_init (void (*) ()) ;
 int __system_initArgv () ;

void initSystem(void (*retAddr)(void))
{
   __libctru_init(retAddr);
   __appInit();
   __system_initArgv();
   __libc_init_array();
}
