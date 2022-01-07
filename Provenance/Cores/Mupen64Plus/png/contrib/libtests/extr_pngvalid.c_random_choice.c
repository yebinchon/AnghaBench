
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random_byte () ;

__attribute__((used)) static int
random_choice(void)
{
   return random_byte() & 1;
}
