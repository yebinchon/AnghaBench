; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_mach_approximate_time_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_mach_approximate_time_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commPagePtr32 = common dso_local global i8* null, align 8
@_COMM_PAGE_APPROX_TIME_SUPPORTED = common dso_local global i64 0, align 8
@_COMM_PAGE32_BASE_ADDRESS = common dso_local global i64 0, align 8
@commPagePtr64 = common dso_local global i8* null, align 8
@_COMM_PAGE32_START_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @commpage_mach_approximate_time_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commpage_mach_approximate_time_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @commPagePtr32, align 8
  store i8* %3, i8** %1, align 8
  store i32 0, i32* %2, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i64, i64* @_COMM_PAGE_APPROX_TIME_SUPPORTED, align 8
  %8 = load i64, i64* @_COMM_PAGE32_BASE_ADDRESS, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i8*, i8** %1, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 %9
  store i8* %11, i8** %1, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %6, %0
  %16 = load i8*, i8** @commPagePtr64, align 8
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i64, i64* @_COMM_PAGE_APPROX_TIME_SUPPORTED, align 8
  %21 = load i64, i64* @_COMM_PAGE32_START_ADDRESS, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %1, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i8*, i8** %1, align 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %15
  %29 = call i32 @commpage_update_mach_approximate_time(i32 0)
  ret void
}

declare dso_local i32 @commpage_update_mach_approximate_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
