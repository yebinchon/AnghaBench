
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_strlcatf (char*,int,char*,int,int,int,int) ;

void
ff_rdt_subscribe_rule (char *cmd, int size,
                       int stream_nr, int rule_nr)
{
    av_strlcatf(cmd, size, "stream=%d;rule=%d,stream=%d;rule=%d",
                stream_nr, rule_nr * 2, stream_nr, rule_nr * 2 + 1);
}
