
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uLong ;
typedef void* uInt ;
typedef int uDate ;
struct TYPE_3__ {void* tm_sec; void* tm_min; void* tm_hour; void* tm_year; void* tm_mon; void* tm_mday; } ;
typedef TYPE_1__ tm_unz ;



__attribute__((used)) static void unzlocal_DosDateToTmuDate (uLong ulDosDate, tm_unz* ptm)
{
    uLong uDate;
    uDate = (uLong)(ulDosDate>>16);
    ptm->tm_mday = (uInt)(uDate&0x1f) ;
    ptm->tm_mon = (uInt)((((uDate)&0x1E0)/0x20)-1) ;
    ptm->tm_year = (uInt)(((uDate&0x0FE00)/0x0200)+1980) ;

    ptm->tm_hour = (uInt) ((ulDosDate &0xF800)/0x800);
    ptm->tm_min = (uInt) ((ulDosDate&0x7E0)/0x20) ;
    ptm->tm_sec = (uInt) (2*(ulDosDate&0x1f)) ;
}
