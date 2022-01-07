; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_iopol_to_tier.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_iopol_to_tier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THROTTLE_LEVEL_TIER0 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER1 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER2 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown I/O policy %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_iopol_to_tier(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %26 [
    i32 132, label %10
    i32 131, label %13
    i32 130, label %17
    i32 128, label %20
    i32 129, label %23
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @THROTTLE_LEVEL_TIER0, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %29

13:                                               ; preds = %3
  %14 = load i32, i32* @THROTTLE_LEVEL_TIER0, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* @THROTTLE_LEVEL_TIER1, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* @THROTTLE_LEVEL_TIER2, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @THROTTLE_LEVEL_TIER3, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23, %20, %17, %13, %10
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
