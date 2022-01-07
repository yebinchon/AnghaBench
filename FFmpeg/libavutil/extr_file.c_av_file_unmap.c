
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int UnmapViewOfFile (int *) ;
 int av_free (int *) ;
 int munmap (int *,size_t) ;

void av_file_unmap(uint8_t *bufptr, size_t size)
{
    if (!size || !bufptr)
        return;





    av_free(bufptr);

}
