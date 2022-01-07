
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_2__ {scalar_t__ ram; } ;


 TYPE_1__ action_replay ;

__attribute__((used)) static void ar_write_ram_8(uint32 address, uint32 data)
{

  *(uint16 *)(action_replay.ram + (address & 0xfffe)) = (data | (data << 8));
}
