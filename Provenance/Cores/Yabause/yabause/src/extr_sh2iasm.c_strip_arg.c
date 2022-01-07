
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strip_arg(const char *str,char *arg)



{
    int pos;

    pos = 0;
    if(str[0] == '@')
    {
      if(str[1] == '(')
      {
        if(str[2] != 0)
        {
        do
        {
           arg[pos] = str[pos];
           pos++;
        }
        while((str[pos-1] != ')') && (str[pos] != 0));

        }
      }
      else
        while((str[pos] != ',') && (str[pos] != 0))
        {
           arg[pos] = str[pos];
           pos++;
        }
    }
    else
      while((str[pos] != ',') && (str[pos] != 0))
      {
          arg[pos] = str[pos];
          pos++;
      }

    arg[pos] = 0;

    return pos;
}
