; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_update_atm_diagnostic_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_update_atm_diagnostic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commPagePtr32 = common dso_local global i8* null, align 8
@_COMM_PAGE_ATM_DIAGNOSTIC_CONFIG = common dso_local global i64 0, align 8
@_COMM_PAGE32_BASE_ADDRESS = common dso_local global i64 0, align 8
@commPagePtr64 = common dso_local global i8* null, align 8
@_COMM_PAGE32_START_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_update_atm_diagnostic_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i8*, i8** @commPagePtr32, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i64, i64* @_COMM_PAGE_ATM_DIAGNOSTIC_CONFIG, align 8
  %10 = load i64, i64* @_COMM_PAGE32_BASE_ADDRESS, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %3, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32*, i32** %3, align 8
  store volatile i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %8, %1
  %19 = load i8*, i8** @commPagePtr64, align 8
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i64, i64* @_COMM_PAGE_ATM_DIAGNOSTIC_CONFIG, align 8
  %24 = load i64, i64* @_COMM_PAGE32_START_ADDRESS, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32*, i32** %3, align 8
  store volatile i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
