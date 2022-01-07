; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_calend_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_calend_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_FAILURE = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calend_getattr(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %12, i32* %4, align 4
  br label %27

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %23 [
    i32 128, label %15
    i32 131, label %20
    i32 129, label %20
    i32 130, label %20
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @NSEC_PER_SEC, align 4
  %17 = sdiv i32 %16, 100
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32 %17, i32* %19, align 4
  br label %25

20:                                               ; preds = %13, %13, %13
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32 0, i32* %22, align 4
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
