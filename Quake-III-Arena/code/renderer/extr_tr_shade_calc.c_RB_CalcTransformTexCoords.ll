; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcTransformTexCoords.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcTransformTexCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { float**, float* }

@tess = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcTransformTexCoords(%struct.TYPE_4__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store float* %1, float** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %73, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 0), align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %78

12:                                               ; preds = %8
  %13 = load float*, float** %4, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  store float %15, float* %6, align 4
  %16 = load float*, float** %4, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  %18 = load float, float* %17, align 4
  store float %18, float* %7, align 4
  %19 = load float, float* %6, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load float**, float*** %21, align 8
  %23 = getelementptr inbounds float*, float** %22, i64 0
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  %26 = load float, float* %25, align 4
  %27 = fmul float %19, %26
  %28 = load float, float* %7, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load float**, float*** %30, align 8
  %32 = getelementptr inbounds float*, float** %31, i64 1
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  %36 = fmul float %28, %35
  %37 = fadd float %27, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  %42 = load float, float* %41, align 4
  %43 = fadd float %37, %42
  %44 = load float*, float** %4, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  store float %43, float* %45, align 4
  %46 = load float, float* %6, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load float**, float*** %48, align 8
  %50 = getelementptr inbounds float*, float** %49, i64 0
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  %54 = fmul float %46, %53
  %55 = load float, float* %7, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load float**, float*** %57, align 8
  %59 = getelementptr inbounds float*, float** %58, i64 1
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fmul float %55, %62
  %64 = fadd float %54, %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 1
  %69 = load float, float* %68, align 4
  %70 = fadd float %64, %69
  %71 = load float*, float** %4, align 8
  %72 = getelementptr inbounds float, float* %71, i64 1
  store float %70, float* %72, align 4
  br label %73

73:                                               ; preds = %12
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load float*, float** %4, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  store float* %77, float** %4, align 8
  br label %8

78:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
