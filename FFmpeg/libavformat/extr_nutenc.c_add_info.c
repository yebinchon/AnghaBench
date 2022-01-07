
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int put_s (int *,int) ;
 int put_str (int *,char const*) ;

__attribute__((used)) static int add_info(AVIOContext *bc, const char *type, const char *value)
{
    put_str(bc, type);
    put_s(bc, -1);
    put_str(bc, value);
    return 1;
}
