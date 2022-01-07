
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 scalar_t__ IsDebug () ;
 int MAX_SIZE ;
 int PR_SET_NAME ;
 int Win32SetThreadName (int,char*) ;
 int prctl (int ,unsigned long,int ,int ,int ) ;
 int sprintf (char*,char*,char*,void*) ;
 int strcpy (char*,char*) ;

void SetThreadName(UINT thread_id, char *name, void *param)
{
}
