
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long* DMActrlptr ;

void Setbuffer(long bufbeg, long bufsize)
{
 long bufend = bufbeg + bufsize;
 DMActrlptr[1] = (bufbeg >> 16) & 0xff;
 DMActrlptr[2] = (bufbeg >> 8) & 0xff;
 DMActrlptr[3] = bufbeg & 0xff;
 DMActrlptr[7] = (bufend >> 16) & 0xff;
 DMActrlptr[8] = (bufend >> 8) & 0xff;
 DMActrlptr[9] = bufend & 0xff;
}
