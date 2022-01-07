; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vidstabutils.c_ff_vs_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vidstabutils.c_ff_vs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@av_malloc = common dso_local global i32 0, align 4
@vs_malloc = common dso_local global i32 0, align 4
@av_mallocz = common dso_local global i32 0, align 4
@vs_zalloc = common dso_local global i32 0, align 4
@av_realloc = common dso_local global i32 0, align 4
@vs_realloc = common dso_local global i32 0, align 4
@av_free = common dso_local global i32 0, align 4
@vs_free = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@VS_ERROR_TYPE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@VS_WARN_TYPE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@VS_INFO_TYPE = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@VS_MSG_TYPE = common dso_local global i32 0, align 4
@vs2av_log = common dso_local global i32 0, align 4
@vs_log = common dso_local global i32 0, align 4
@VS_ERROR = common dso_local global i64 0, align 8
@VS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vs_init() #0 {
  %1 = load i32, i32* @av_malloc, align 4
  store i32 %1, i32* @vs_malloc, align 4
  %2 = load i32, i32* @av_mallocz, align 4
  store i32 %2, i32* @vs_zalloc, align 4
  %3 = load i32, i32* @av_realloc, align 4
  store i32 %3, i32* @vs_realloc, align 4
  %4 = load i32, i32* @av_free, align 4
  store i32 %4, i32* @vs_free, align 4
  %5 = load i32, i32* @AV_LOG_ERROR, align 4
  store i32 %5, i32* @VS_ERROR_TYPE, align 4
  %6 = load i32, i32* @AV_LOG_WARNING, align 4
  store i32 %6, i32* @VS_WARN_TYPE, align 4
  %7 = load i32, i32* @AV_LOG_INFO, align 4
  store i32 %7, i32* @VS_INFO_TYPE, align 4
  %8 = load i32, i32* @AV_LOG_VERBOSE, align 4
  store i32 %8, i32* @VS_MSG_TYPE, align 4
  %9 = load i32, i32* @vs2av_log, align 4
  store i32 %9, i32* @vs_log, align 4
  store i64 0, i64* @VS_ERROR, align 8
  store i32 1, i32* @VS_OK, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
