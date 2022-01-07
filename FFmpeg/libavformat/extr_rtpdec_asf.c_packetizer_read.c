
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AVERROR (int ) ;
 int EAGAIN ;

__attribute__((used)) static int packetizer_read(void *opaque, uint8_t *buf, int buf_size)
{
    return AVERROR(EAGAIN);
}
