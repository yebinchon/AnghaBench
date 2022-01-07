; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_TRIG.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_TRIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@joy0 = common dso_local global i32 0, align 4
@joyswap = common dso_local global i32 0, align 4
@trig0 = common dso_local global i32 0, align 4
@joy1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_TRIG(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %34 [
    i32 0, label %5
    i32 1, label %19
    i32 2, label %33
    i32 3, label %33
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @joy0, align 4
  %7 = icmp sgt i32 %6, 15
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %17

9:                                                ; preds = %5
  %10 = load i32, i32* @joyswap, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @trig0, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 1, %12 ], [ %14, %13 ]
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ 0, %8 ], [ %16, %15 ]
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @joy1, align 4
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %31

23:                                               ; preds = %19
  %24 = load i32, i32* @joyswap, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @trig0, align 4
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 1, %28 ]
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i32 [ 0, %22 ], [ %30, %29 ]
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1, %1
  br label %34

34:                                               ; preds = %1, %33
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
