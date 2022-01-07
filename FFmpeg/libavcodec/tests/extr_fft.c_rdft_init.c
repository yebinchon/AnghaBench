
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum RDFTransformType { ____Placeholder_RDFTransformType } RDFTransformType ;
typedef int RDFTContext ;


 int * av_rdft_init (int,int) ;
 int ff_rdft_init (int *,int,int) ;

__attribute__((used)) static inline void rdft_init(RDFTContext **r, int nbits, enum RDFTransformType trans)
{



    ff_rdft_init(*r, nbits, trans);

}
