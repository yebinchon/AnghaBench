; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setBBIntervalRegs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setBBIntervalRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._timing = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@regs = common dso_local global i32* null, align 8
@changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._timing*)* @__setBBIntervalRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setBBIntervalRegs(%struct._timing* %0) #0 {
  %2 = alloca %struct._timing*, align 8
  store %struct._timing* %0, %struct._timing** %2, align 8
  %3 = load %struct._timing*, %struct._timing** %2, align 8
  %4 = getelementptr inbounds %struct._timing, %struct._timing* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %5, 5
  %7 = load %struct._timing*, %struct._timing** %2, align 8
  %8 = getelementptr inbounds %struct._timing, %struct._timing* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %6, %9
  %11 = load i32*, i32** @regs, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 10
  store i32 %10, i32* %12, align 4
  %13 = load %struct._timing*, %struct._timing** %2, align 8
  %14 = getelementptr inbounds %struct._timing, %struct._timing* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 5
  %17 = load %struct._timing*, %struct._timing** %2, align 8
  %18 = getelementptr inbounds %struct._timing, %struct._timing* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load i32*, i32** @regs, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 11
  store i32 %20, i32* %22, align 4
  %23 = call i32 @VI_REGCHANGE(i32 10)
  %24 = load i32, i32* @changed, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @changed, align 4
  %26 = call i32 @VI_REGCHANGE(i32 11)
  %27 = load i32, i32* @changed, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @changed, align 4
  %29 = load %struct._timing*, %struct._timing** %2, align 8
  %30 = getelementptr inbounds %struct._timing, %struct._timing* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 5
  %33 = load %struct._timing*, %struct._timing** %2, align 8
  %34 = getelementptr inbounds %struct._timing, %struct._timing* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = load i32*, i32** @regs, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 12
  store i32 %36, i32* %38, align 4
  %39 = load %struct._timing*, %struct._timing** %2, align 8
  %40 = getelementptr inbounds %struct._timing, %struct._timing* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 5
  %43 = load %struct._timing*, %struct._timing** %2, align 8
  %44 = getelementptr inbounds %struct._timing, %struct._timing* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = load i32*, i32** @regs, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 13
  store i32 %46, i32* %48, align 4
  %49 = call i32 @VI_REGCHANGE(i32 12)
  %50 = load i32, i32* @changed, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @changed, align 4
  %52 = call i32 @VI_REGCHANGE(i32 13)
  %53 = load i32, i32* @changed, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @changed, align 4
  ret void
}

declare dso_local i32 @VI_REGCHANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
