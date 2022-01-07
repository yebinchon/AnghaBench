
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hidd_le_env_t ;


 int hidd_le_env ;
 int memset (int *,int ,int) ;

void hidd_le_init(void)
{


    memset(&hidd_le_env, 0, sizeof(hidd_le_env_t));
}
