
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int UINT_MAX ;
 int av_image_check_size (int,int,int ,int *) ;
 int printf (char*,...) ;

int main(void)
{
    int64_t x, y;

    for (y = -1; y<UINT_MAX; y+= y/2 + 1) {
        for (x = -1; x<UINT_MAX; x+= x/2 + 1) {
            int ret = av_image_check_size(x, y, 0, ((void*)0));
            printf("%d", ret >= 0);
        }
        printf("\n");
    }

    return 0;
}
