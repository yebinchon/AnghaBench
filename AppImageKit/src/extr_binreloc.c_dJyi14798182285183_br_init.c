
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BrInitError ;


 int * _br_find_exe (int *) ;
 int * exe ;

int
br_init (BrInitError *error)
{
 exe = _br_find_exe (error);
 return exe != ((void*)0);
}
