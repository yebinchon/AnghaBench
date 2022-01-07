
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float angle ;
 scalar_t__ glfwGetTime () ;

__attribute__((used)) static void animate(void)
{
  angle = 100.f * (float) glfwGetTime();
}
