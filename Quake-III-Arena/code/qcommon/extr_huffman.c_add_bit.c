
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char byte ;


 int bloc ;

__attribute__((used)) static void add_bit (char bit, byte *fout) {
 if ((bloc&7) == 0) {
  fout[(bloc>>3)] = 0;
 }
 fout[(bloc>>3)] |= bit << (bloc&7);
 bloc++;
}
