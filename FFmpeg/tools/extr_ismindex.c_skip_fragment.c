
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int MKBETAG (char,char,char,char) ;
 int skip_tag (int *,int ) ;

__attribute__((used)) static int skip_fragment(AVIOContext *in)
{
    int ret;
    ret = skip_tag(in, MKBETAG('m', 'o', 'o', 'f'));
    if (!ret)
        ret = skip_tag(in, MKBETAG('m', 'd', 'a', 't'));
    return ret;
}
