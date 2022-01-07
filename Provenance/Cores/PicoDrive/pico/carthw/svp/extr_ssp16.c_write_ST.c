
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CHECK_ST (int ) ;
 int rST ;

__attribute__((used)) static void write_ST(u32 d)
{
 CHECK_ST(d);
 rST = d;
}
