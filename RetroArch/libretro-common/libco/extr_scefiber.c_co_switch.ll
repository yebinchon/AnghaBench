; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_scefiber.c_co_switch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_scefiber.c_co_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@co_active_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @co_switch(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  store i64 %8, i64* @co_active_, align 8
  %9 = call i32 @sceFiberReturnToThread(i32 0, i32* null)
  br label %24

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load i64, i64* @co_active_, align 8
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  store i64 %16, i64* @co_active_, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @sceFiberRun(i32* %17, i32 0, i32* %3)
  br label %23

19:                                               ; preds = %10
  %20 = load i64, i64* %2, align 8
  store i64 %20, i64* @co_active_, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @sceFiberSwitch(i32* %21, i32 0, i32* %3)
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %7
  ret void
}

declare dso_local i32 @sceFiberReturnToThread(i32, i32*) #1

declare dso_local i32 @sceFiberRun(i32*, i32, i32*) #1

declare dso_local i32 @sceFiberSwitch(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
