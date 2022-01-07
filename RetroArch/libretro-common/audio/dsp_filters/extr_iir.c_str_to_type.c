
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum IIRFilter { ____Placeholder_IIRFilter } IIRFilter ;


 int APF ;
 int BBOOST ;
 int BPCSGF ;
 int BPZPGF ;
 int CHECK (int) ;
 int HPF ;
 int HSH ;
 int LPF ;
 int LSH ;
 int NOTCH ;
 int PEQ ;
 int RIAA_CD ;
 int RIAA_phono ;

__attribute__((used)) static enum IIRFilter str_to_type(const char *str)
{
   CHECK(LPF);
   CHECK(HPF);
   CHECK(BPCSGF);
   CHECK(BPZPGF);
   CHECK(APF);
   CHECK(NOTCH);
   CHECK(RIAA_phono);
   CHECK(PEQ);
   CHECK(BBOOST);
   CHECK(LSH);
   CHECK(HSH);
   CHECK(RIAA_CD);

   return LPF;
}
