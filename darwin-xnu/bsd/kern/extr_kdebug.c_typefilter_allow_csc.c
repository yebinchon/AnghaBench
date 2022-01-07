
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int * typefilter_t ;


 int assert (int ) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void typefilter_allow_csc(typefilter_t tf, uint16_t csc)
{
 assert(tf != ((void*)0));
 setbit(tf, csc);
}
