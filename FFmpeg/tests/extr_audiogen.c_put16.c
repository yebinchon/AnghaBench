
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int fputc (int,int ) ;
 int outfile ;

__attribute__((used)) static void put16(int16_t v)
{
    fputc( v & 0xff, outfile);
    fputc((v >> 8) & 0xff, outfile);
}
