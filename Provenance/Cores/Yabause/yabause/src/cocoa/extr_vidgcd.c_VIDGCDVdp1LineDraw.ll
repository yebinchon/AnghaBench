; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1LineDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1LineDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@cmd = common dso_local global i32 0, align 4
@Vdp1Regs = common dso_local global %struct.TYPE_2__* null, align 8
@Vdp1Ram = common dso_local global i32 0, align 4
@gouraudA = common dso_local global i32 0, align 4
@gouraudB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp1LineDraw(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @Vdp1Ram, align 4
  %19 = call i32 @Vdp1ReadCommand(i32* @cmd, i64 %17, i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @Vdp1Ram, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 12
  %29 = call i64 @T1ReadWord(i32 %24, i64 %28)
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 %23, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @Vdp1Ram, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 14
  %41 = call i64 @T1ReadWord(i32 %36, i64 %40)
  %42 = trunc i64 %41 to i32
  %43 = add nsw i32 %35, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @Vdp1Ram, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 16
  %53 = call i64 @T1ReadWord(i32 %48, i64 %52)
  %54 = trunc i64 %53 to i32
  %55 = add nsw i32 %47, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @Vdp1Ram, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 18
  %65 = call i64 @T1ReadWord(i32 %60, i64 %64)
  %66 = trunc i64 %65 to i32
  %67 = add nsw i32 %59, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @getlinelength(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @gouraudA, align 4
  %75 = load i32, i32* @gouraudB, align 4
  %76 = call i32 @gouraudLineSetup(double* %11, double* %13, double* %12, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load double, double* %11, align 8
  %82 = load double, double* %12, align 8
  %83 = load double, double* %13, align 8
  %84 = call i32 @DrawLine(i32 %77, i32 %78, i32 %79, i32 %80, i32 0, i32 0, double %81, double %82, double %83)
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(i32*, i64, i32) #1

declare dso_local i64 @T1ReadWord(i32, i64) #1

declare dso_local i32 @getlinelength(i32, i32, i32, i32) #1

declare dso_local i32 @gouraudLineSetup(double*, double*, double*, i32, i32, i32) #1

declare dso_local i32 @DrawLine(i32, i32, i32, i32, i32, i32, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
