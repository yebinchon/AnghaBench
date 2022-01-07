; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1UserClipping.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1UserClipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@Vdp1Ram = common dso_local global i32 0, align 4
@Vdp1Regs = common dso_local global %struct.TYPE_2__* null, align 8
@vdp1clipxend = common dso_local global i64 0, align 8
@vdp1clipxstart = common dso_local global i64 0, align 8
@vdp1clipyend = common dso_local global i64 0, align 8
@vdp1clipystart = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp1UserClipping(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @Vdp1Ram, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 12
  %10 = call i8* @T1ReadWord(i32 %5, i64 %9)
  %11 = ptrtoint i8* %10 to i64
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* @Vdp1Ram, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 14
  %19 = call i8* @T1ReadWord(i32 %14, i64 %18)
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @Vdp1Ram, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 20
  %28 = call i8* @T1ReadWord(i32 %23, i64 %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @Vdp1Ram, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 22
  %37 = call i8* @T1ReadWord(i32 %32, i64 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  ret void
}

declare dso_local i8* @T1ReadWord(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
