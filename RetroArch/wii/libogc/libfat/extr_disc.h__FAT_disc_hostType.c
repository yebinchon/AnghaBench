
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int ioType; } ;
typedef TYPE_1__ DISC_INTERFACE ;



__attribute__((used)) static inline uint32_t _FAT_disc_hostType (const DISC_INTERFACE* disc) {
 return disc->ioType;
}
