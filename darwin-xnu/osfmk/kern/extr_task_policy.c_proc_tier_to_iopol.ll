; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_tier_to_iopol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_tier_to_iopol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOPOL_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown passive tier %d\00", align 1
@IOPOL_DEFAULT = common dso_local global i32 0, align 4
@IOPOL_STANDARD = common dso_local global i32 0, align 4
@IOPOL_UTILITY = common dso_local global i32 0, align 4
@IOPOL_THROTTLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown tier %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_tier_to_iopol(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %12 [
    i32 131, label %10
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @IOPOL_PASSIVE, align 4
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @IOPOL_DEFAULT, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %26 [
    i32 132, label %18
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

18:                                               ; preds = %16, %16
  %19 = load i32, i32* @IOPOL_DEFAULT, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %16
  %21 = load i32, i32* @IOPOL_STANDARD, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load i32, i32* @IOPOL_UTILITY, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %16
  %25 = load i32, i32* @IOPOL_THROTTLE, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @IOPOL_DEFAULT, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %24, %22, %20, %18, %12, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
