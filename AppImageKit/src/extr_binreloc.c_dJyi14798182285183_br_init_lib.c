
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BrInitError ;


 int * _br_find_exe_for_symbol (void const*,int *) ;
 int * exe ;

int
br_init_lib (BrInitError *error)
{
 exe = _br_find_exe_for_symbol ((const void *) "", error);
 return exe != ((void*)0);
}
