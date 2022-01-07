
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFMAX (int,int ) ;
 int strtol (char const*,int *,int ) ;

__attribute__((used)) static int get_sample_rate(const char *samplerate)
{
    int ret = strtol(samplerate, ((void*)0), 0);
    return FFMAX(ret, 0);
}
