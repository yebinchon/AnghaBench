
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits_left (int *) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int ensure_bits(GetBitContext *s, int n)
{
    int left = get_bits_left(s);
    if (left < 0)
        return -1;
    if (left < n) {
        skip_bits_long(s, left);
        return 1;
    }
    return 0;
}
