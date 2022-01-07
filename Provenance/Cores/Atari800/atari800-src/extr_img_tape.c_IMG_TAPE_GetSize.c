
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num_blocks; } ;
typedef TYPE_1__ IMG_TAPE_t ;



unsigned int IMG_TAPE_GetSize(IMG_TAPE_t *file)
{
 return file->num_blocks;
}
