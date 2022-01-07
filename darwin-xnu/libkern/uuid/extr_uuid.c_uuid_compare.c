
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 int memcmp (int const,int const,int) ;

int
uuid_compare(const uuid_t uu1, const uuid_t uu2)
{
 return memcmp(uu1, uu2, sizeof(uuid_t));
}
