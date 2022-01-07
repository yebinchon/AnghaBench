
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memmove (int *,int *,int) ;

__attribute__((used)) static void rotate_faulty_loco(uint8_t *data, int width, int height, int stride)
{
    int y;

    for (y=1; y<height; y++) {
        if (width>=y) {
            memmove(data + y*stride,
                    data + y*(stride + 1),
                    (width-y));
            if (y+1 < height)
                memmove(data + y*stride + (width-y),
                        data + (y+1)*stride, y);
        }
    }
}
