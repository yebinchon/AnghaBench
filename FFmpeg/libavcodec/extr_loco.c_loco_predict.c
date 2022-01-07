
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int mid_pred (int,int,int) ;

__attribute__((used)) static inline int loco_predict(uint8_t* data, int stride)
{
    int a, b, c;

    a = data[-stride];
    b = data[-1];
    c = data[-stride - 1];

    return mid_pred(a, a + b - c, b);
}
