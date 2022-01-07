; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_R_SetupProjection.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_R_SetupProjection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { float, i32* }
%struct.TYPE_5__ = type { float, float }

@r_znear = common dso_local global %struct.TYPE_8__* null, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@M_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetupProjection() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = call i32 (...) @SetFarClip()
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_znear, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  store float %13, float* %8, align 4
  %14 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 0), align 8
  store float %14, float* %9, align 4
  %15 = load float, float* %8, align 4
  %16 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1, i32 0), align 8
  %17 = load float, float* @M_PI, align 4
  %18 = fmul float %16, %17
  %19 = fdiv float %18, 3.600000e+02
  %20 = call float @tan(float %19)
  %21 = fmul float %15, %20
  store float %21, float* %4, align 4
  %22 = load float, float* %4, align 4
  %23 = fneg float %22
  store float %23, float* %3, align 4
  %24 = load float, float* %8, align 4
  %25 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1, i32 1), align 4
  %26 = load float, float* @M_PI, align 4
  %27 = fmul float %25, %26
  %28 = fdiv float %27, 3.600000e+02
  %29 = call float @tan(float %28)
  %30 = fmul float %24, %29
  store float %30, float* %2, align 4
  %31 = load float, float* %2, align 4
  %32 = fneg float %31
  store float %32, float* %1, align 4
  %33 = load float, float* %2, align 4
  %34 = load float, float* %1, align 4
  %35 = fsub float %33, %34
  store float %35, float* %5, align 4
  %36 = load float, float* %4, align 4
  %37 = load float, float* %3, align 4
  %38 = fsub float %36, %37
  store float %38, float* %6, align 4
  %39 = load float, float* %9, align 4
  %40 = load float, float* %8, align 4
  %41 = fsub float %39, %40
  store float %41, float* %7, align 4
  %42 = load float, float* %8, align 4
  %43 = fmul float 2.000000e+00, %42
  %44 = load float, float* %5, align 4
  %45 = fdiv float %43, %44
  %46 = fptosi float %45 to i32
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 0, i32* %50, align 4
  %51 = load float, float* %2, align 4
  %52 = load float, float* %1, align 4
  %53 = fadd float %51, %52
  %54 = load float, float* %5, align 4
  %55 = fdiv float %53, %54
  %56 = fptosi float %55 to i32
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 0, i32* %62, align 4
  %63 = load float, float* %8, align 4
  %64 = fmul float 2.000000e+00, %63
  %65 = load float, float* %6, align 4
  %66 = fdiv float %64, %65
  %67 = fptosi float %66 to i32
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  store i32 %67, i32* %69, align 4
  %70 = load float, float* %4, align 4
  %71 = load float, float* %3, align 4
  %72 = fadd float %70, %71
  %73 = load float, float* %6, align 4
  %74 = fdiv float %72, %73
  %75 = fptosi float %74 to i32
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 9
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 13
  store i32 0, i32* %79, align 4
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 0, i32* %81, align 4
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  store i32 0, i32* %83, align 4
  %84 = load float, float* %9, align 4
  %85 = load float, float* %8, align 4
  %86 = fadd float %84, %85
  %87 = fneg float %86
  %88 = load float, float* %7, align 4
  %89 = fdiv float %87, %88
  %90 = fptosi float %89 to i32
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 10
  store i32 %90, i32* %92, align 4
  %93 = load float, float* %9, align 4
  %94 = fmul float -2.000000e+00, %93
  %95 = load float, float* %8, align 4
  %96 = fmul float %94, %95
  %97 = load float, float* %7, align 4
  %98 = fdiv float %96, %97
  %99 = fptosi float %98 to i32
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 14
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 0, i32* %103, align 4
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  store i32 0, i32* %105, align 4
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 11
  store i32 -1, i32* %107, align 4
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 1), align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 15
  store i32 0, i32* %109, align 4
  ret void
}

declare dso_local i32 @SetFarClip(...) #1

declare dso_local float @tan(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
