
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int VCOS_LOG_LEVEL_T ;
typedef int VCOS_LOG_CAT_T ;


 int vcos_vlog_impl_func (int const*,int ,char const*,int ) ;

void vcos_vlog_impl(const VCOS_LOG_CAT_T *cat, VCOS_LOG_LEVEL_T _level, const char *fmt, va_list args)
{
   vcos_vlog_impl_func( cat, _level, fmt, args );
}
