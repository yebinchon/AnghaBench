; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadLightObjIdx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadLightObjIdx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@wgPipe = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_LoadLightObjIdx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %16 [
    i32 135, label %8
    i32 134, label %9
    i32 133, label %10
    i32 132, label %11
    i32 131, label %12
    i32 130, label %13
    i32 129, label %14
    i32 128, label %15
  ]

8:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

9:                                                ; preds = %2
  store i32 1, i32* %6, align 4
  br label %17

10:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %17

11:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %17

12:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %17

13:                                               ; preds = %2
  store i32 5, i32* %6, align 4
  br label %17

14:                                               ; preds = %2
  store i32 6, i32* %6, align 4
  br label %17

15:                                               ; preds = %2
  store i32 7, i32* %6, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @_SHIFTL(i32 %18, i32 4, i32 8)
  %20 = or i32 62976, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 65535
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @_SHIFTL(i32 %23, i32 16, i32 16)
  %25 = or i32 %22, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 56, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
