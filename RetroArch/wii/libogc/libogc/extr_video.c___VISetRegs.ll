; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VISetRegs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VISetRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@shdw_changeMode = common dso_local global i32 0, align 4
@shdw_changed = common dso_local global i32 0, align 4
@shdw_regs = common dso_local global i32* null, align 8
@_viReg = common dso_local global i32* null, align 8
@HorVer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@currTiming = common dso_local global i32 0, align 4
@currTvMode = common dso_local global i32 0, align 4
@nextFb = common dso_local global i32 0, align 4
@currentFb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @__VISetRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__VISetRegs() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @shdw_changeMode, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = call i32 (...) @__getCurrentFieldEvenOdd()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i64 0, i64* %1, align 8
  br label %35

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %0
  br label %12

12:                                               ; preds = %15, %11
  %13 = load i32, i32* @shdw_changed, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load i32, i32* @shdw_changed, align 4
  %17 = call i64 @cntlzd(i32 %16)
  store i64 %17, i64* %2, align 8
  %18 = load i32*, i32** @shdw_regs, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @_viReg, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @VI_REGCHANGE(i64 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @shdw_changed, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* @shdw_changed, align 4
  br label %12

31:                                               ; preds = %12
  store i32 0, i32* @shdw_changeMode, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 1), align 4
  store i32 %32, i32* @currTiming, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 0), align 4
  store i32 %33, i32* @currTvMode, align 4
  %34 = load i32, i32* @nextFb, align 4
  store i32 %34, i32* @currentFb, align 4
  store i64 1, i64* %1, align 8
  br label %35

35:                                               ; preds = %31, %9
  %36 = load i64, i64* %1, align 8
  ret i64 %36
}

declare dso_local i32 @__getCurrentFieldEvenOdd(...) #1

declare dso_local i64 @cntlzd(i32) #1

declare dso_local i32 @VI_REGCHANGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
