
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int uint32_t ;
typedef int android_LogPriority ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_LOG_TYPE_T ;
struct TYPE_4__ {int verbosity; } ;


 int ANDROID_LOG_DEBUG ;
 int ANDROID_LOG_ERROR ;
 int ANDROID_LOG_INFO ;
 int ANDROID_LOG_VERBOSE ;
 int LOG_PRI_VA (int ,int ,char const*,int ) ;
 int LOG_TAG ;
 int VC_CONTAINER_LOG_DEBUG ;
 int VC_CONTAINER_LOG_ERROR ;
 int VC_CONTAINER_LOG_INFO ;
 int fflush (int ) ;
 int printf (char*) ;
 int vcos_vlog (char const*,int ) ;
 int verbosity_mask ;
 int vprintf (char const*,int ) ;

void vc_container_log_vargs(VC_CONTAINER_T *ctx, VC_CONTAINER_LOG_TYPE_T type, const char *format, va_list args)
{
   uint32_t verbosity = ctx ? ctx->priv->verbosity : verbosity_mask;


   if(!(type & verbosity)) return;
   vcos_vlog(format, args);





}
