; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_get_threads_limit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_get_threads_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESOURCE_LIMIT_THREADS = common dso_local global i64 0, align 8
@CURRENT_KPROCESS_HANDLE = common dso_local global i32 0, align 4
@MCH2_THREAD_COUNT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_threads_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_threads_limit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @RESOURCE_LIMIT_THREADS, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i32, i32* @CURRENT_KPROCESS_HANDLE, align 4
  %7 = call i32 @svcGetResourceLimit(i32* %1, i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @svcGetResourceLimitCurrentValues(i64* %2, i32 %8, i64* %4, i32 1)
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @svcGetResourceLimitLimitValues(i64* %3, i32 %10, i64* %4, i32 1)
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @svcCloseHandle(i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @MCH2_THREAD_COUNT_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load i64, i64* @MCH2_THREAD_COUNT_MAX, align 8
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %17, %0
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %2, align 8
  %22 = sub nsw i64 %20, %21
  ret i64 %22
}

declare dso_local i32 @svcGetResourceLimit(i32*, i32) #1

declare dso_local i32 @svcGetResourceLimitCurrentValues(i64*, i32, i64*, i32) #1

declare dso_local i32 @svcGetResourceLimitLimitValues(i64*, i32, i64*, i32) #1

declare dso_local i32 @svcCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
