
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 int memcpy (int ,int const,int) ;

void
uuid_copy(uuid_t dst, const uuid_t src)
{
 memcpy(dst, src, sizeof(uuid_t));
}
