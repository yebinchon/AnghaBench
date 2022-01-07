
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * typefilter_t ;


 int KDBG_TYPEFILTER_BITMAP_SIZE ;
 int assert (int ) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void typefilter_reject_all(typefilter_t tf)
{
 assert(tf != ((void*)0));
 memset(tf, 0, KDBG_TYPEFILTER_BITMAP_SIZE);
}
