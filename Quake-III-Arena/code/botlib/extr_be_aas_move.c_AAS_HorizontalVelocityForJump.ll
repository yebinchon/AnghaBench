; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_HorizontalVelocityForJump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_HorizontalVelocityForJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float }

@aassettings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_HorizontalVelocityForJump(float %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float*, align 8
  store float %0, float* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  %17 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 0), align 4
  store float %17, float* %10, align 4
  %18 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aassettings, i32 0, i32 1), align 4
  store float %18, float* %11, align 4
  %19 = load float, float* %10, align 4
  %20 = fpext float %19 to double
  %21 = fmul double 5.000000e-01, %20
  %22 = load float, float* %6, align 4
  %23 = load float, float* %10, align 4
  %24 = fdiv float %22, %23
  %25 = fpext float %24 to double
  %26 = fmul double %21, %25
  %27 = load float, float* %6, align 4
  %28 = load float, float* %10, align 4
  %29 = fdiv float %27, %28
  %30 = fpext float %29 to double
  %31 = fmul double %26, %30
  %32 = fptrunc double %31 to float
  store float %32, float* %12, align 4
  %33 = load float*, float** %7, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = load float, float* %34, align 4
  %36 = load float, float* %12, align 4
  %37 = fadd float %35, %36
  store float %37, float* %15, align 4
  %38 = load float, float* %15, align 4
  %39 = load float*, float** %8, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  %41 = load float, float* %40, align 4
  %42 = fsub float %38, %41
  store float %42, float* %13, align 4
  %43 = load float, float* %13, align 4
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load float, float* %11, align 4
  %47 = load float*, float** %9, align 8
  store float %46, float* %47, align 4
  store i32 0, i32* %5, align 4
  br label %102

48:                                               ; preds = %4
  %49 = load float, float* %13, align 4
  %50 = fpext float %49 to double
  %51 = load float, float* %10, align 4
  %52 = fpext float %51 to double
  %53 = fmul double 5.000000e-01, %52
  %54 = fdiv double %50, %53
  %55 = fptrunc double %54 to float
  %56 = call float @sqrt(float %55)
  store float %56, float* %14, align 4
  %57 = load float*, float** %8, align 8
  %58 = load float*, float** %7, align 8
  %59 = load float*, float** %16, align 8
  %60 = call i32 @VectorSubtract(float* %57, float* %58, float* %59)
  %61 = load float, float* %14, align 4
  %62 = load float, float* %6, align 4
  %63 = load float, float* %10, align 4
  %64 = fdiv float %62, %63
  %65 = fadd float %61, %64
  %66 = fcmp oeq float %65, 0.000000e+00
  br i1 %66, label %67, label %70

67:                                               ; preds = %48
  %68 = load float, float* %11, align 4
  %69 = load float*, float** %9, align 8
  store float %68, float* %69, align 4
  store i32 0, i32* %5, align 4
  br label %102

70:                                               ; preds = %48
  %71 = load float*, float** %16, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  %73 = load float, float* %72, align 4
  %74 = load float*, float** %16, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  %76 = load float, float* %75, align 4
  %77 = fmul float %73, %76
  %78 = load float*, float** %16, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  %80 = load float, float* %79, align 4
  %81 = load float*, float** %16, align 8
  %82 = getelementptr inbounds float, float* %81, i64 1
  %83 = load float, float* %82, align 4
  %84 = fmul float %80, %83
  %85 = fadd float %77, %84
  %86 = call float @sqrt(float %85)
  %87 = load float, float* %14, align 4
  %88 = load float, float* %6, align 4
  %89 = load float, float* %10, align 4
  %90 = fdiv float %88, %89
  %91 = fadd float %87, %90
  %92 = fdiv float %86, %91
  %93 = load float*, float** %9, align 8
  store float %92, float* %93, align 4
  %94 = load float*, float** %9, align 8
  %95 = load float, float* %94, align 4
  %96 = load float, float* %11, align 4
  %97 = fcmp ogt float %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %70
  %99 = load float, float* %11, align 4
  %100 = load float*, float** %9, align 8
  store float %99, float* %100, align 4
  store i32 0, i32* %5, align 4
  br label %102

101:                                              ; preds = %70
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %98, %67, %45
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local float @sqrt(float) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
