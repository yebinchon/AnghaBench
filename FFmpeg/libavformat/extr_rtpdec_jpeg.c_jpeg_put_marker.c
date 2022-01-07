
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutByteContext ;


 int bytestream2_put_byte (int *,int) ;

__attribute__((used)) static void jpeg_put_marker(PutByteContext *pbc, int code)
{
    bytestream2_put_byte(pbc, 0xff);
    bytestream2_put_byte(pbc, code);
}
