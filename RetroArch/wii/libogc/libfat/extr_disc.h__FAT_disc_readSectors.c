
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sec_t ;
struct TYPE_3__ {int (* readSectors ) (int ,int ,void*) ;} ;
typedef TYPE_1__ DISC_INTERFACE ;


 int stub1 (int ,int ,void*) ;

__attribute__((used)) static inline bool _FAT_disc_readSectors (const DISC_INTERFACE* disc, sec_t sector, sec_t numSectors, void* buffer) {
 return disc->readSectors (sector, numSectors, buffer);
}
