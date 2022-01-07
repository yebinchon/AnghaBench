
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int AVERROR (int ) ;
 int EINVAL ;
 int MAX_EXPIRY ;
 scalar_t__ av_small_strptime (char*,char*,struct tm*) ;

__attribute__((used)) static int parse_set_cookie_expiry_time(const char *exp_str, struct tm *buf)
{
    char exp_buf[MAX_EXPIRY];
    int i, j, exp_buf_len = MAX_EXPIRY-1;
    char *expiry;


    for (i = 0, j = 0; exp_str[i] != '\0' && j < exp_buf_len; i++) {
        if ((exp_str[i] >= '0' && exp_str[i] <= '9') ||
            (exp_str[i] >= 'A' && exp_str[i] <= 'Z') ||
            (exp_str[i] >= 'a' && exp_str[i] <= 'z')) {
            exp_buf[j] = exp_str[i];
            j++;
        }
    }
    exp_buf[j] = '\0';
    expiry = exp_buf;


    while ((*expiry < '0' || *expiry > '9') && *expiry != '\0')
        expiry++;

    return av_small_strptime(expiry, "%d%b%Y%H%M%S", buf) ? 0 : AVERROR(EINVAL);
}
