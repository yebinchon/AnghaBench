
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carthw_radica_read16 (int) ;

__attribute__((used)) static void carthw_radica_reset(void)
{
 carthw_radica_read16(0xa13000);
}
