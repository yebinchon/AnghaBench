
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int FFSIGN (int) ;
 int abs (int) ;

__attribute__((used)) static inline int dequant_and_decompand(int level, int quantisation, int codebook)
{
    if (codebook == 0 || codebook == 1) {
        int64_t abslevel = abs(level);
        if (level < 264)
            return (abslevel + ((768 * abslevel * abslevel * abslevel) / (255 * 255 * 255))) *
               FFSIGN(level) * quantisation;
        else
            return level * quantisation;
    } else
        return level * quantisation;
}
