
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int BLOCKSIZE ;
 int BUFFERSIZE ;
 int FFMIN (int,int) ;
 int memcpy (int *,int const*,int) ;

void ff_copy_and_dup(int16_t *target, const int16_t *source, int offset)
{
    source += BUFFERSIZE - offset;

    memcpy(target, source, FFMIN(BLOCKSIZE, offset)*sizeof(*target));
    if (offset < BLOCKSIZE)
        memcpy(target + offset, source, (BLOCKSIZE - offset)*sizeof(*target));
}
