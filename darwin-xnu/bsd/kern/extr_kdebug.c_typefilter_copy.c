
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * typefilter_t ;


 int KDBG_TYPEFILTER_BITMAP_SIZE ;
 int assert (int ) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void typefilter_copy(typefilter_t dst, typefilter_t src)
{
 assert(src != ((void*)0));
 assert(dst != ((void*)0));
 memcpy(dst, src, KDBG_TYPEFILTER_BITMAP_SIZE);
}
