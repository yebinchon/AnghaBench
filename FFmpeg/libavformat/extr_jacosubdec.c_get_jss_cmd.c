
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_ARRAY_ELEMS (char**) ;
 char av_toupper (char) ;
 char** cmds ;

__attribute__((used)) static int get_jss_cmd(char k)
{
    int i;

    k = av_toupper(k);
    for (i = 0; i < FF_ARRAY_ELEMS(cmds); i++)
        if (k == cmds[i][0])
            return i;
    return -1;
}
