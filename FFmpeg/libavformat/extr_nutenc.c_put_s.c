
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 int FFABS (scalar_t__) ;
 int ff_put_v (int *,int) ;

__attribute__((used)) static void put_s(AVIOContext *bc, int64_t val)
{
    ff_put_v(bc, 2 * FFABS(val) - (val > 0));
}
