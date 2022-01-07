
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_SUCCEEDED (int ) ;
 int amInit () ;

__attribute__((used)) static bool init(void)
{
 return R_SUCCEEDED(amInit());
}
