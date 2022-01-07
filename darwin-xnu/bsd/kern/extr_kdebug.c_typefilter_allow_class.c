
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t const uint8_t ;
typedef size_t uint32_t ;
typedef int * typefilter_t ;


 int assert (int ) ;
 int memset (int *,int,size_t const) ;

__attribute__((used)) static void typefilter_allow_class(typefilter_t tf, uint8_t class)
{
 assert(tf != ((void*)0));
 const uint32_t BYTES_PER_CLASS = 256 / 8;
 memset(&tf[class * BYTES_PER_CLASS], 0xFF, BYTES_PER_CLASS);
}
