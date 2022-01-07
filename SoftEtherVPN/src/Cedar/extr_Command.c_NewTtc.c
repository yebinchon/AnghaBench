
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int TT_PRINT_PROC ;
typedef int TTC ;


 int * NewTtcEx (char*,int ,int ,int ,int ,int,int,int *,void*,int *,int *) ;

TTC *NewTtc(char *host, UINT port, UINT numtcp, UINT type, UINT64 span, bool dbl, bool raw, TT_PRINT_PROC *print_proc, void *param)
{
 return NewTtcEx(host, port, numtcp, type, span, dbl, raw, print_proc, param, ((void*)0), ((void*)0));
}
