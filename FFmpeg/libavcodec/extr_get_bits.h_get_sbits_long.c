
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits_long (int *,int) ;
 int sign_extend (int ,int) ;

__attribute__((used)) static inline int get_sbits_long(GetBitContext *s, int n)
{

    if (!n)
        return 0;

    return sign_extend(get_bits_long(s, n), n);
}
