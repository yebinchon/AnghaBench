
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteLock (int *) ;
 int FreeInternational () ;
 int * token_lock ;

void FreeStringLibrary()
{

 FreeInternational();


 DeleteLock(token_lock);
 token_lock = ((void*)0);
}
