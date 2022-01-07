
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* UWORD ;
typedef int ULONG ;


 int* ANTIC_lookup_gtia11 ;
 int* ANTIC_lookup_gtia9 ;
 int GTIA_COLBK ;
 void** colour_translation_table ;

__attribute__((used)) static void setup_gtia9_11(void) {
 int i;
 ULONG count9 = 0;
 ULONG count11 = 0;
 ANTIC_lookup_gtia11[0] = ANTIC_lookup_gtia9[0] & 0xf0f0f0f0;
 for (i = 1; i < 16; i++) {
  ANTIC_lookup_gtia9[i] = ANTIC_lookup_gtia9[0] | (count9 += 0x01010101);
  ANTIC_lookup_gtia11[i] = ANTIC_lookup_gtia9[0] | (count11 += 0x10101010);
 }

}
