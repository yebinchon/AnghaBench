
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int hb_valog (int,char*,char const*,int ) ;

__attribute__((used)) static void ssa_log(int level, const char *fmt, va_list args, void *data)
{
    if ( level < 5 )
    {
        hb_valog( 1, "[ass]", fmt, args );
    }
}
