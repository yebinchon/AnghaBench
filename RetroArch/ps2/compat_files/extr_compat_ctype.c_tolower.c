
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int tolower(int ch)
{
        if(ch >= 'A' && ch <= 'Z')
                return ('a' + ch - 'A');
        else
                return ch;
}
