
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memstream_t ;


 int SEEK_SET ;
 int memstream_seek (int *,long,int ) ;

void memstream_rewind(memstream_t *stream)
{
   memstream_seek(stream, 0L, SEEK_SET);
}
