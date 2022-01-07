
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Alert (char*,int *) ;
 int CheckStringLibrary () ;
 int InitInternational () ;
 int NewLock () ;
 int exit (int ) ;
 int token_lock ;

void InitStringLibrary()
{

 token_lock = NewLock();


 InitInternational();


 if (CheckStringLibrary() == 0)
 {



  Alert("String Library Init Failed.\r\nPlease check your locale settings and iconv() libraries.", ((void*)0));

  exit(0);
 }
}
