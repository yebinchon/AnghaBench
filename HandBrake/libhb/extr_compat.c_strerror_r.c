
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int ERRSTR_LEN ;
 scalar_t__ snprintf (char*,size_t,char*,...) ;

int strerror_r(int errnum, char *strerrbuf, size_t buflen)
{
    int ret = 0;
    char errstr[ERRSTR_LEN];

    if (strerrbuf == ((void*)0) || buflen == 0)
    {
        ret = ERANGE;
        goto done;
    }

    if(snprintf(errstr, ERRSTR_LEN - 1, "unknown error %d", errnum) < 0)
    {
        ret = EINVAL;
        goto done;
    }

    if (snprintf(strerrbuf, buflen, errstr) < 0)
    {
        ret = EINVAL;
        goto done;
    }

done:
    return ret;
}
