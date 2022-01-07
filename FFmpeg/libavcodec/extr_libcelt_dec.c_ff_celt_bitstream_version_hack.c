
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version_id; } ;
typedef int CELTMode ;
typedef TYPE_1__ CELTHeader ;


 int celt_header_init (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static int ff_celt_bitstream_version_hack(CELTMode *mode)
{
    CELTHeader header = { .version_id = 0 };
    celt_header_init(&header, mode, 960, 2);
    return header.version_id;
}
