
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 int read_frandom (int ,int) ;
 int uuid_random_setflags (int ) ;

void
uuid_generate_early_random(uuid_t out)
{
 read_frandom(out, sizeof(uuid_t));
 uuid_random_setflags(out);
}
