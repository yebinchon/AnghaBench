
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
client_spin_loop(unsigned count, void (fn)(void))
{
 while (count--)
  fn();
}
