
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_left (int *) ;

__attribute__((used)) static int get_dimension(GetBitContext *gb, const int *dim)
{
    int t = get_bits(gb, 3);
    int val = dim[t];
    if(val < 0)
        val = dim[get_bits1(gb) - val];
    if(!val){
        do{
            if (get_bits_left(gb) < 8)
                return AVERROR_INVALIDDATA;
            t = get_bits(gb, 8);
            val += t << 2;
        }while(t == 0xFF);
    }
    return val;
}
