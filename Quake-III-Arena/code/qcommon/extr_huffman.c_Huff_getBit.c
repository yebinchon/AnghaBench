
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int bloc ;

int Huff_getBit( byte *fin, int *offset) {
 int t;
 bloc = *offset;
 t = (fin[(bloc>>3)] >> (bloc&7)) & 0x1;
 bloc++;
 *offset = bloc;
 return t;
}
