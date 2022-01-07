; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setHorizontalRegs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setHorizontalRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._timing = type { i32, i32, i32, i32, i32, i32 }

@regs = common dso_local global i32* null, align 8
@changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._timing*, i32, i32)* @__setHorizontalRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setHorizontalRegs(%struct._timing* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct._timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._timing* %0, %struct._timing** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct._timing*, %struct._timing** %4, align 8
  %10 = getelementptr inbounds %struct._timing, %struct._timing* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 8
  %13 = load %struct._timing*, %struct._timing** %4, align 8
  %14 = getelementptr inbounds %struct._timing, %struct._timing* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = load i32*, i32** @regs, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct._timing*, %struct._timing** %4, align 8
  %20 = getelementptr inbounds %struct._timing, %struct._timing* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @regs, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %21, i32* %23, align 4
  %24 = call i32 @VI_REGCHANGE(i32 2)
  %25 = load i32, i32* @changed, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @changed, align 4
  %27 = call i32 @VI_REGCHANGE(i32 3)
  %28 = load i32, i32* @changed, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @changed, align 4
  %30 = load %struct._timing*, %struct._timing** %4, align 8
  %31 = getelementptr inbounds %struct._timing, %struct._timing* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 40
  %36 = and i32 %35, 511
  store i32 %36, i32* %7, align 4
  %37 = load %struct._timing*, %struct._timing** %4, align 8
  %38 = getelementptr inbounds %struct._timing, %struct._timing* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 40
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 720, %43
  %45 = sub nsw i32 %42, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 9
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 1
  %50 = or i32 %47, %49
  %51 = load i32*, i32** @regs, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 7
  %55 = load %struct._timing*, %struct._timing** %4, align 8
  %56 = getelementptr inbounds %struct._timing, %struct._timing* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  %59 = load i32*, i32** @regs, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  store i32 %58, i32* %60, align 4
  %61 = call i32 @VI_REGCHANGE(i32 4)
  %62 = load i32, i32* @changed, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @changed, align 4
  %64 = call i32 @VI_REGCHANGE(i32 5)
  %65 = load i32, i32* @changed, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @changed, align 4
  ret void
}

declare dso_local i32 @VI_REGCHANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
