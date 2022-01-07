; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_rtclock.c_deadline_to_decrementer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_rtclock.c_deadline_to_decrementer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECREMENTER_MIN = common dso_local global i32 0, align 4
@DECREMENTER_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @deadline_to_decrementer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deadline_to_decrementer(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DECREMENTER_MIN, align 4
  store i32 %11, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @DECREMENTER_MAX, align 8
  %18 = add nsw i64 %17, 1
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i64, i64* @DECREMENTER_MAX, align 8
  br label %36

22:                                               ; preds = %12
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @DECREMENTER_MIN, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @DECREMENTER_MIN, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %33, %20
  %37 = phi i64 [ %21, %20 ], [ %35, %33 ]
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
