; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_get_yolo_box.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_get_yolo_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, <2 x float> } @get_yolo_box(float* %0, float* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store float* %0, float** %13, align 8
  store float* %1, float** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %24 = load i32, i32* %17, align 4
  %25 = sitofp i32 %24 to float
  %26 = load float*, float** %13, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %23, align 4
  %29 = mul nsw i32 0, %28
  %30 = add nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %26, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fadd float %25, %33
  %35 = load i32, i32* %19, align 4
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %18, align 4
  %41 = sitofp i32 %40 to float
  %42 = load float*, float** %13, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %23, align 4
  %45 = mul nsw i32 1, %44
  %46 = add nsw i32 %43, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %42, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fadd float %41, %49
  %51 = load i32, i32* %20, align 4
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %50, %52
  %54 = fptosi float %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load float*, float** %13, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %23, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %56, i64 %61
  %63 = load float, float* %62, align 4
  %64 = call float @exp(float %63)
  %65 = load float*, float** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = mul nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %65, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fmul float %64, %70
  %72 = load i32, i32* %21, align 4
  %73 = sitofp i32 %72 to float
  %74 = fdiv float %71, %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store float %74, float* %75, align 4
  %76 = load float*, float** %13, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %23, align 4
  %79 = mul nsw i32 3, %78
  %80 = add nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %76, i64 %81
  %83 = load float, float* %82, align 4
  %84 = call float @exp(float %83)
  %85 = load float*, float** %14, align 8
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %85, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fmul float %84, %91
  %93 = load i32, i32* %22, align 4
  %94 = sitofp i32 %93 to float
  %95 = fdiv float %92, %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store float %95, float* %96, align 4
  %97 = bitcast %struct.TYPE_3__* %12 to { i64, <2 x float> }*
  %98 = load { i64, <2 x float> }, { i64, <2 x float> }* %97, align 4
  ret { i64, <2 x float> } %98
}

declare dso_local float @exp(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
