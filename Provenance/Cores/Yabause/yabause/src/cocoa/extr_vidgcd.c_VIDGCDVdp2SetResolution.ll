; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2SetResolution.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2SetResolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdp2width = common dso_local global i32 0, align 4
@resxratio = common dso_local global i32 0, align 4
@vdp2height = common dso_local global i32 0, align 4
@resyratio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp2SetResolution(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 7
  switch i32 %4, label %13 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
  ]

5:                                                ; preds = %1
  store i32 320, i32* @vdp2width, align 4
  store i32 1, i32* @resxratio, align 4
  br label %13

6:                                                ; preds = %1
  store i32 352, i32* @vdp2width, align 4
  store i32 1, i32* @resxratio, align 4
  br label %13

7:                                                ; preds = %1
  store i32 320, i32* @vdp2width, align 4
  store i32 2, i32* @resxratio, align 4
  br label %13

8:                                                ; preds = %1
  store i32 352, i32* @vdp2width, align 4
  store i32 2, i32* @resxratio, align 4
  br label %13

9:                                                ; preds = %1
  store i32 320, i32* @vdp2width, align 4
  store i32 1, i32* @resxratio, align 4
  br label %13

10:                                               ; preds = %1
  store i32 352, i32* @vdp2width, align 4
  store i32 1, i32* @resxratio, align 4
  br label %13

11:                                               ; preds = %1
  store i32 320, i32* @vdp2width, align 4
  store i32 2, i32* @resxratio, align 4
  br label %13

12:                                               ; preds = %1
  store i32 352, i32* @vdp2width, align 4
  store i32 2, i32* @resxratio, align 4
  br label %13

13:                                               ; preds = %1, %12, %11, %10, %9, %8, %7, %6, %5
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 3
  switch i32 %16, label %20 [
    i32 0, label %17
    i32 1, label %18
    i32 2, label %19
  ]

17:                                               ; preds = %13
  store i32 224, i32* @vdp2height, align 4
  br label %21

18:                                               ; preds = %13
  store i32 240, i32* @vdp2height, align 4
  br label %21

19:                                               ; preds = %13
  store i32 256, i32* @vdp2height, align 4
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %19, %18, %17
  store i32 1, i32* @resyratio, align 4
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 3
  switch i32 %24, label %27 [
    i32 3, label %25
    i32 2, label %26
    i32 0, label %26
  ]

25:                                               ; preds = %21
  store i32 2, i32* @resyratio, align 4
  br label %28

26:                                               ; preds = %21, %21
  br label %27

27:                                               ; preds = %21, %26
  br label %28

28:                                               ; preds = %27, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
