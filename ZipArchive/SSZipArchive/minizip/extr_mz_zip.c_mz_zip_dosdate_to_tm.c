
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tm {int dummy; } ;
typedef int int32_t ;


 int MZ_FORMAT_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int memset (struct tm*,int ,int) ;
 int mz_zip_dosdate_to_raw_tm (int ,struct tm*) ;
 scalar_t__ mz_zip_invalid_date (struct tm*) ;

int32_t mz_zip_dosdate_to_tm(uint64_t dos_date, struct tm *ptm)
{
    if (ptm == ((void*)0))
        return MZ_PARAM_ERROR;

    mz_zip_dosdate_to_raw_tm(dos_date, ptm);

    if (mz_zip_invalid_date(ptm))
    {

        memset(ptm, 0, sizeof(struct tm));
        return MZ_FORMAT_ERROR;
    }
    return MZ_OK;
}
