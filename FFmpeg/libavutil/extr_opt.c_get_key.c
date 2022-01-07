
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int WHITESPACES ;
 char* av_malloc (int) ;
 scalar_t__ is_key_char (char const) ;
 int memcpy (char*,char const*,int) ;
 int strchr (char const*,char const) ;
 int strspn (char const*,int ) ;

__attribute__((used)) static int get_key(const char **ropts, const char *delim, char **rkey)
{
    const char *opts = *ropts;
    const char *key_start, *key_end;

    key_start = opts += strspn(opts, WHITESPACES);
    while (is_key_char(*opts))
        opts++;
    key_end = opts;
    opts += strspn(opts, WHITESPACES);
    if (!*opts || !strchr(delim, *opts))
        return AVERROR(EINVAL);
    opts++;
    if (!(*rkey = av_malloc(key_end - key_start + 1)))
        return AVERROR(ENOMEM);
    memcpy(*rkey, key_start, key_end - key_start);
    (*rkey)[key_end - key_start] = 0;
    *ropts = opts;
    return 0;
}
