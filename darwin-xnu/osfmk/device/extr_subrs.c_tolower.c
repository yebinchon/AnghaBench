
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
tolower(unsigned char ch)
{
    if (ch >= 'A' && ch <= 'Z')
 ch = 'a' + (ch - 'A');

    return ch;
}
