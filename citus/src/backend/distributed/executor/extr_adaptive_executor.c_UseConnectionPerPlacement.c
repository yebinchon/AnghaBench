
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ForceMaxQueryParallelization ;
 scalar_t__ MultiShardConnectionType ;
 scalar_t__ SEQUENTIAL_CONNECTION ;

__attribute__((used)) static bool
UseConnectionPerPlacement(void)
{
 return ForceMaxQueryParallelization &&
     MultiShardConnectionType != SEQUENTIAL_CONNECTION;
}
