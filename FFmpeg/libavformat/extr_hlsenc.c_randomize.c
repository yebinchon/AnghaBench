
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOSYS ;
 int GCRY_VERY_STRONG_RANDOM ;
 scalar_t__ RAND_bytes (int *,int) ;
 int gcry_randomize (int *,int,int ) ;

__attribute__((used)) static int randomize(uint8_t *buf, int len)
{







    return AVERROR(ENOSYS);

    return AVERROR(EINVAL);
}
