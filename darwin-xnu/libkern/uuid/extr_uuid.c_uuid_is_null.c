
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 int UUID_NULL ;
 int memcmp (int const,int ,int) ;

int
uuid_is_null(const uuid_t uu)
{
 return !memcmp(uu, UUID_NULL, sizeof(uuid_t));
}
