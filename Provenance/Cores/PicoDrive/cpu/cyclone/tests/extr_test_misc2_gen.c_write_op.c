
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word2 ;
typedef int word1 ;
typedef int word0 ;
typedef int op ;


 int bswap16 (unsigned short) ;
 int f ;
 int fwrite (unsigned short*,int,int,int ) ;

__attribute__((used)) static void write_op(unsigned short op, unsigned short word0, unsigned short word1, unsigned short word2)
{
 bswap16(op);
 bswap16(word0);
 bswap16(word1);
 bswap16(word2);

 fwrite(&op, 1, sizeof(op), f);
 fwrite(&word0, 1, sizeof(word0), f);
 fwrite(&word1, 1, sizeof(word1), f);
 fwrite(&word2, 1, sizeof(word2), f);
}
