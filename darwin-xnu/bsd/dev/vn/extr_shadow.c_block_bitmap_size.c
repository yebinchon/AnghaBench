
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int off_t ;


 int NBBY ;
 int howmany (int ,int ) ;

__attribute__((used)) static __inline__ uint32_t
block_bitmap_size(off_t file_size, uint32_t block_size)
{
    off_t blocks = howmany(file_size, block_size);
    return (howmany(blocks, NBBY));
}
