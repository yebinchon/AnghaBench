
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 int memset (int *,int ,int) ;

__attribute__((used)) static int decode_blck(GetByteContext *gb, uint8_t *frame, int width, int height)
{
    memset(frame, 0, width * height);
    return 0;
}
