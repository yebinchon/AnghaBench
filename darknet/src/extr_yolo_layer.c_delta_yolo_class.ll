; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_delta_yolo_class.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_delta_yolo_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delta_yolo_class(float* %0, float* %1, i32 %2, i32 %3, i32 %4, i32 %5, float* %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store float* %6, float** %14, align 8
  %16 = load float*, float** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  %20 = load float, float* %19, align 4
  %21 = fcmp une float %20, 0.000000e+00
  br i1 %21, label %22, label %57

22:                                               ; preds = %7
  %23 = load float*, float** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %23, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fsub float 1.000000e+00, %31
  %33 = load float*, float** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %33, i64 %39
  store float %32, float* %40, align 4
  %41 = load float*, float** %14, align 8
  %42 = icmp ne float* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %22
  %44 = load float*, float** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %44, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %14, align 8
  %54 = load float, float* %53, align 4
  %55 = fadd float %54, %52
  store float %55, float* %53, align 4
  br label %56

56:                                               ; preds = %43, %22
  br label %110

57:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %107, %57
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = sitofp i32 %67 to float
  %69 = load float*, float** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %15, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %69, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fsub float %68, %77
  %79 = load float*, float** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %79, i64 %85
  store float %78, float* %86, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %62
  %91 = load float*, float** %14, align 8
  %92 = icmp ne float* %91, null
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load float*, float** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %15, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %94, i64 %100
  %102 = load float, float* %101, align 4
  %103 = load float*, float** %14, align 8
  %104 = load float, float* %103, align 4
  %105 = fadd float %104, %102
  store float %105, float* %103, align 4
  br label %106

106:                                              ; preds = %93, %90, %62
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %58

110:                                              ; preds = %56, %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
