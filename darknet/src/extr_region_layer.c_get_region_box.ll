; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_region_layer.c_get_region_box.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_region_layer.c_get_region_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, <2 x float> } @get_region_box(float* %0, float* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store float* %0, float** %11, align 8
  store float* %1, float** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i32, i32* %15, align 4
  %21 = sitofp i32 %20 to float
  %22 = load float*, float** %11, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %19, align 4
  %25 = mul nsw i32 0, %24
  %26 = add nsw i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %22, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fadd float %21, %29
  %31 = load i32, i32* %17, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = sitofp i32 %36 to float
  %38 = load float*, float** %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %19, align 4
  %41 = mul nsw i32 1, %40
  %42 = add nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %38, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fadd float %37, %45
  %47 = load i32, i32* %18, align 4
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %46, %48
  %50 = fptosi float %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load float*, float** %11, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %19, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %52, i64 %57
  %59 = load float, float* %58, align 4
  %60 = call float @exp(float %59)
  %61 = load float*, float** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %61, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fmul float %60, %66
  %68 = load i32, i32* %17, align 4
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %67, %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store float %70, float* %71, align 4
  %72 = load float*, float** %11, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %19, align 4
  %75 = mul nsw i32 3, %74
  %76 = add nsw i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %72, i64 %77
  %79 = load float, float* %78, align 4
  %80 = call float @exp(float %79)
  %81 = load float*, float** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %81, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fmul float %80, %87
  %89 = load i32, i32* %18, align 4
  %90 = sitofp i32 %89 to float
  %91 = fdiv float %88, %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store float %91, float* %92, align 4
  %93 = bitcast %struct.TYPE_3__* %10 to { i64, <2 x float> }*
  %94 = load { i64, <2 x float> }, { i64, <2 x float> }* %93, align 4
  ret { i64, <2 x float> } %94
}

declare dso_local float @exp(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
