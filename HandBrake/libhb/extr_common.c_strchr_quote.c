
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* strchr_quote(const char *pos, char c, char q)
{
    if (pos == ((void*)0))
        return ((void*)0);

    while (*pos != 0 && *pos != c)
    {
        if (*pos == q)
        {
            pos = strchr_quote(pos+1, q, 0);
            if (pos == ((void*)0))
                return ((void*)0);
            pos++;
        }
        else if (*pos == '\\' && *(pos+1) != 0)
            pos += 2;
        else
            pos++;
    }
    if (*pos != c)
        return ((void*)0);
    return pos;
}
