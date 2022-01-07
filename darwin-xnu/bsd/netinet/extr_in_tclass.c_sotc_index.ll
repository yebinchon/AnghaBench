; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_sotc_index.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_sotc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOTCIX_BK_SYS = common dso_local global i64 0, align 8
@SOTCIX_BK = common dso_local global i64 0, align 8
@SOTCIX_BE = common dso_local global i64 0, align 8
@SOTCIX_RD = common dso_local global i64 0, align 8
@SOTCIX_OAM = common dso_local global i64 0, align 8
@SOTCIX_AV = common dso_local global i64 0, align 8
@SOTCIX_RV = common dso_local global i64 0, align 8
@SOTCIX_VI = common dso_local global i64 0, align 8
@SOTCIX_VO = common dso_local global i64 0, align 8
@SOTCIX_CTL = common dso_local global i64 0, align 8
@SIZE_T_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @sotc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sotc_index(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %25 [
    i32 137, label %5
    i32 130, label %7
    i32 138, label %7
    i32 139, label %9
    i32 134, label %11
    i32 135, label %13
    i32 140, label %15
    i32 133, label %17
    i32 129, label %19
    i32 132, label %19
    i32 128, label %21
    i32 131, label %21
    i32 136, label %23
  ]

5:                                                ; preds = %1
  %6 = load i64, i64* @SOTCIX_BK_SYS, align 8
  store i64 %6, i64* %2, align 8
  br label %28

7:                                                ; preds = %1, %1
  %8 = load i64, i64* @SOTCIX_BK, align 8
  store i64 %8, i64* %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load i64, i64* @SOTCIX_BE, align 8
  store i64 %10, i64* %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load i64, i64* @SOTCIX_RD, align 8
  store i64 %12, i64* %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load i64, i64* @SOTCIX_OAM, align 8
  store i64 %14, i64* %2, align 8
  br label %28

15:                                               ; preds = %1
  %16 = load i64, i64* @SOTCIX_AV, align 8
  store i64 %16, i64* %2, align 8
  br label %28

17:                                               ; preds = %1
  %18 = load i64, i64* @SOTCIX_RV, align 8
  store i64 %18, i64* %2, align 8
  br label %28

19:                                               ; preds = %1, %1
  %20 = load i64, i64* @SOTCIX_VI, align 8
  store i64 %20, i64* %2, align 8
  br label %28

21:                                               ; preds = %1, %1
  %22 = load i64, i64* @SOTCIX_VO, align 8
  store i64 %22, i64* %2, align 8
  br label %28

23:                                               ; preds = %1
  %24 = load i64, i64* @SOTCIX_CTL, align 8
  store i64 %24, i64* %2, align 8
  br label %28

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* @SIZE_T_MAX, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %26, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
