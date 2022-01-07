
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int v; int h; } ;


 TYPE_1__ rP ;
 scalar_t__ rX ;
 scalar_t__ rY ;

__attribute__((used)) static u32 read_P(void)
{
 int m1 = (signed short)rX;
 int m2 = (signed short)rY;
 rP.v = (m1 * m2 * 2);
 return rP.h;
}
