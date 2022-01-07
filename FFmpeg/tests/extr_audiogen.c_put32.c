
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fputc (int,int ) ;
 int outfile ;

__attribute__((used)) static void put32(uint32_t v)
{
    fputc( v & 0xff, outfile);
    fputc((v >> 8) & 0xff, outfile);
    fputc((v >> 16) & 0xff, outfile);
    fputc((v >> 24) & 0xff, outfile);
}
