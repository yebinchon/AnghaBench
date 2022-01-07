
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int AV_WB32 (unsigned char*,int ) ;
 int AV_WB64 (unsigned char*,int ) ;

__attribute__((used)) static void set_atom_size(unsigned char *header, uint32_t header_size, uint64_t size)
{
    switch (header_size) {
    case 8:
        AV_WB32(header, size);
        break;

    case 16:
        AV_WB64(header + 8, size);
        break;
    }
}
