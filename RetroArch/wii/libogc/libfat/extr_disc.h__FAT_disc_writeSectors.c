
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sec_t ;
struct TYPE_3__ {int (* writeSectors ) (int ,int ,void const*) ;} ;
typedef TYPE_1__ DISC_INTERFACE ;


 int stub1 (int ,int ,void const*) ;

__attribute__((used)) static inline bool _FAT_disc_writeSectors (const DISC_INTERFACE* disc, sec_t sector, sec_t numSectors, const void* buffer) {
 return disc->writeSectors (sector, numSectors, buffer);
}
