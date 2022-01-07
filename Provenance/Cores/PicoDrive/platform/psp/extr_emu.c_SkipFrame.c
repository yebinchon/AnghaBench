
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoFrame () ;
 int PicoSkipFrame ;

__attribute__((used)) static void SkipFrame(void)
{
 PicoSkipFrame=1;
 PicoFrame();
 PicoSkipFrame=0;
}
