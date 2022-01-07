
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 int memset (int ,int ,int) ;

void
uuid_clear(uuid_t uu)
{
 memset(uu, 0, sizeof(uuid_t));
}
