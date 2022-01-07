
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVFormatContext {int dummy; } ;


 int ff_framehash_write_header (struct AVFormatContext*) ;

__attribute__((used)) static int write_header(struct AVFormatContext *s)
{
    return ff_framehash_write_header(s);
}
