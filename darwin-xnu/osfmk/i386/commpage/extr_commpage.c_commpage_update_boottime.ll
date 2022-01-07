; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_update_boottime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_update_boottime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commPagePtr32 = common dso_local global i8* null, align 8
@_COMM_PAGE_BOOTTIME_USEC = common dso_local global i64 0, align 8
@_COMM_PAGE32_START_ADDRESS = common dso_local global i64 0, align 8
@commPagePtr64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_update_boottime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8*, i8** @commPagePtr32, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i64, i64* @_COMM_PAGE_BOOTTIME_USEC, align 8
  %9 = load i64, i64* @_COMM_PAGE32_START_ADDRESS, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 %10
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %7, %1
  %17 = load i8*, i8** @commPagePtr64, align 8
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i64, i64* @_COMM_PAGE_BOOTTIME_USEC, align 8
  %22 = load i64, i64* @_COMM_PAGE32_START_ADDRESS, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %3, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
