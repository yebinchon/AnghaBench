
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 int uuid_generate_random (int ) ;

void
uuid_generate(uuid_t out)
{
 uuid_generate_random(out);
}
