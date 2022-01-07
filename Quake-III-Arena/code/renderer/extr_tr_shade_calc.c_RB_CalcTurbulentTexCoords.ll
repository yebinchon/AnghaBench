; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcTurbulentTexCoords.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcTurbulentTexCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, i32, double** }
%struct.TYPE_6__ = type { float* }
%struct.TYPE_5__ = type { float, float, float }

@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FUNCTABLE_SIZE = common dso_local global double 0.000000e+00, align 8
@FUNCTABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcTurbulentTexCoords(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store float* %1, float** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %11, %16
  store float %17, float* %6, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %97, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %102

22:                                               ; preds = %18
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  %25 = load float, float* %24, align 4
  store float %25, float* %7, align 4
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  store float %28, float* %8, align 4
  %29 = load float, float* %7, align 4
  %30 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %31 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double*, double** %31, i64 %33
  %35 = load double*, double** %34, align 8
  %36 = getelementptr inbounds double, double* %35, i64 0
  %37 = load double, double* %36, align 8
  %38 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double*, double** %38, i64 %40
  %42 = load double*, double** %41, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  %44 = load double, double* %43, align 8
  %45 = fadd double %37, %44
  %46 = fmul double %45, 1.000000e+00
  %47 = fdiv double %46, 1.280000e+02
  %48 = fmul double %47, 1.250000e-01
  %49 = load float, float* %6, align 4
  %50 = fpext float %49 to double
  %51 = fadd double %48, %50
  %52 = load double, double* @FUNCTABLE_SIZE, align 8
  %53 = fmul double %51, %52
  %54 = fptosi double %53 to i32
  %55 = load i32, i32* @FUNCTABLE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %30, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load float, float* %61, align 4
  %63 = fmul float %59, %62
  %64 = fadd float %29, %63
  %65 = load float*, float** %4, align 8
  %66 = getelementptr inbounds float, float* %65, i64 0
  store float %64, float* %66, align 4
  %67 = load float, float* %8, align 4
  %68 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %69 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double*, double** %69, i64 %71
  %73 = load double*, double** %72, align 8
  %74 = getelementptr inbounds double, double* %73, i64 1
  %75 = load double, double* %74, align 8
  %76 = fmul double %75, 1.000000e+00
  %77 = fdiv double %76, 1.280000e+02
  %78 = fmul double %77, 1.250000e-01
  %79 = load float, float* %6, align 4
  %80 = fpext float %79 to double
  %81 = fadd double %78, %80
  %82 = load double, double* @FUNCTABLE_SIZE, align 8
  %83 = fmul double %81, %82
  %84 = fptosi double %83 to i32
  %85 = load i32, i32* @FUNCTABLE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %68, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load float, float* %91, align 4
  %93 = fmul float %89, %92
  %94 = fadd float %67, %93
  %95 = load float*, float** %4, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  store float %94, float* %96, align 4
  br label %97

97:                                               ; preds = %22
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = load float*, float** %4, align 8
  %101 = getelementptr inbounds float, float* %100, i64 2
  store float* %101, float** %4, align 8
  br label %18

102:                                              ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
