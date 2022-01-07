
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum DCTTransformType { ____Placeholder_DCTTransformType } DCTTransformType ;
typedef int DCTContext ;


 int * av_dct_init (int,int) ;
 int ff_dct_init (int *,int,int) ;

__attribute__((used)) static inline void dct_init(DCTContext **d, int nbits, enum DCTTransformType trans)
{



    ff_dct_init(*d, nbits, trans);

}
