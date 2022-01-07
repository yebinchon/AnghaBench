
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulonglong ;
struct timeb {scalar_t__ millitm; scalar_t__ time; } ;
struct TYPE_3__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef scalar_t__ NXTime_t ;
typedef TYPE_1__ FILETIME ;


 int GetSystemTimeAsFileTime (TYPE_1__*) ;
 int NXGetTime (int ,int ,scalar_t__*) ;
 int NX_MSECONDS ;
 int NX_SINCE_1970 ;
 int ftime (struct timeb*) ;
 scalar_t__ time (int *) ;

ulonglong my_timer_milliseconds(void)
{
  return 0;

}
