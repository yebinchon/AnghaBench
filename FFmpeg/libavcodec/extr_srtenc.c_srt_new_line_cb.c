
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srt_print (void*,char*) ;

__attribute__((used)) static void srt_new_line_cb(void *priv, int forced)
{
    srt_print(priv, "\r\n");
}
