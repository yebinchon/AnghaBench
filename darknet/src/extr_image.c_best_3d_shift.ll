; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_best_3d_shift.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_best_3d_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @best_3d_shift(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca float, align 4
  %16 = bitcast %struct.TYPE_7__* %7 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %0, i64* %17, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %1, i64* %18, align 4
  %19 = bitcast %struct.TYPE_7__* %8 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  store i64 %2, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  store i64 %3, i64* %21, align 4
  store i32 %4, i32* %9, align 4
  store i32 %5, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load float, float* @FLT_MAX, align 4
  store float %22, float* %13, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %74, %6
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %struct.TYPE_7__* %8 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 4
  %39 = call { i64, i64 } @crop_image(i64 %36, i64 %38, i32 0, i32 %29, i32 %31, i32 %33)
  %40 = bitcast %struct.TYPE_7__* %14 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i64 } %39, 0
  store i64 %42, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i64 } %39, 1
  store i64 %44, i64* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %50, %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = call float @dist_array(i32 %46, i32 %48, i32 %56, i32 100)
  store float %57, float* %15, align 4
  %58 = load float, float* %15, align 4
  %59 = load float, float* %13, align 4
  %60 = fcmp olt float %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %28
  %62 = load float, float* %15, align 4
  store float %62, float* %13, align 4
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %28
  %65 = load i32, i32* %11, align 4
  %66 = load float, float* %15, align 4
  %67 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %65, float %66)
  %68 = bitcast %struct.TYPE_7__* %14 to { i64, i64 }*
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 4
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = load i64, i64* %71, align 4
  %73 = call i32 @free_image(i64 %70, i64 %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %11, align 4
  br label %24

77:                                               ; preds = %24
  %78 = load i32, i32* %12, align 4
  ret i32 %78
}

declare dso_local { i64, i64 } @crop_image(i64, i64, i32, i32, i32, i32) #1

declare dso_local float @dist_array(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, float) #1

declare dso_local i32 @free_image(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
