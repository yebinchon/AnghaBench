
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MAX_PGCN ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void PgcWalkInit( uint32_t pgcn_map[MAX_PGCN/32] )
{
    memset(pgcn_map, 0, sizeof(uint32_t) * MAX_PGCN/32);
}
