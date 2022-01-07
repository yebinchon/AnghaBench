; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1LineDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1LineDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }

@gouraudA = common dso_local global i32 0, align 4
@gouraudB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp1LineDraw(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @Vdp1ReadCommand(i32* %15, i32 %18, i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 12
  %30 = call i64 @T1ReadWord(i32* %25, i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = add nsw i32 %24, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 14
  %42 = call i64 @T1ReadWord(i32* %37, i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = add nsw i32 %36, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 16
  %54 = call i64 @T1ReadWord(i32* %49, i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %48, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 18
  %66 = call i64 @T1ReadWord(i32* %61, i32 %65)
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %60, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @iterateOverLine(i32 %69, i32 %70, i32 %71, i32 %72, i32 1, i32* null, i32* null, %struct.TYPE_6__* %73, i32* %15, i32* %74, i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @gouraudA, align 4
  %79 = load i32, i32* @gouraudB, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @gouraudLineSetup(double* %11, double* %13, double* %12, i32 %77, i32 %78, i32 %79, i32* %80, %struct.TYPE_6__* %81, i32* %15, i32* %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load double, double* %11, align 8
  %89 = load double, double* %12, align 8
  %90 = load double, double* %13, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @DrawLine(i32 %84, i32 %85, i32 %86, i32 %87, i32 0, i32 0, i32 0, double %88, double %89, double %90, %struct.TYPE_6__* %91, i32* %15, i32* %92, i32* %93)
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(i32*, i32, i32*) #1

declare dso_local i64 @T1ReadWord(i32*, i32) #1

declare dso_local i32 @iterateOverLine(i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @gouraudLineSetup(double*, double*, double*, i32, i32, i32, i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @DrawLine(i32, i32, i32, i32, i32, i32, i32, double, double, double, %struct.TYPE_6__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
