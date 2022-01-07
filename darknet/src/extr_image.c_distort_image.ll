; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_distort_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_distort_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @distort_image(i64 %0, float* %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_7__* %6 to { i64, float* }*
  %12 = getelementptr inbounds { i64, float* }, { i64, float* }* %11, i32 0, i32 0
  store i64 %0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, float* }, { i64, float* }* %11, i32 0, i32 1
  store float* %1, float** %13, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  store float %4, float* %9, align 4
  %14 = bitcast %struct.TYPE_7__* %6 to { i64, float* }*
  %15 = getelementptr inbounds { i64, float* }, { i64, float* }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, float* }, { i64, float* }* %14, i32 0, i32 1
  %18 = load float*, float** %17, align 8
  %19 = call i32 @rgb_to_hsv(i64 %16, float* %18)
  %20 = load float, float* %8, align 4
  %21 = bitcast %struct.TYPE_7__* %6 to { i64, float* }*
  %22 = getelementptr inbounds { i64, float* }, { i64, float* }* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds { i64, float* }, { i64, float* }* %21, i32 0, i32 1
  %25 = load float*, float** %24, align 8
  %26 = call i32 @scale_image_channel(i64 %23, float* %25, i32 1, float %20)
  %27 = load float, float* %9, align 4
  %28 = bitcast %struct.TYPE_7__* %6 to { i64, float* }*
  %29 = getelementptr inbounds { i64, float* }, { i64, float* }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, float* }, { i64, float* }* %28, i32 0, i32 1
  %32 = load float*, float** %31, align 8
  %33 = call i32 @scale_image_channel(i64 %30, float* %32, i32 2, float %27)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %88, %5
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float, float* %7, align 4
  %50 = fadd float %48, %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %52 = load float*, float** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  store float %50, float* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %57 = load float*, float** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fcmp ogt float %61, 1.000000e+00
  br i1 %62, label %63, label %71

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %65 = load float*, float** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fsub float %69, 1.000000e+00
  store float %70, float* %68, align 4
  br label %71

71:                                               ; preds = %63, %42
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fcmp olt float %77, 0.000000e+00
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, 1.000000e+00
  store float %86, float* %84, align 4
  br label %87

87:                                               ; preds = %79, %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %34

91:                                               ; preds = %34
  %92 = bitcast %struct.TYPE_7__* %6 to { i64, float* }*
  %93 = getelementptr inbounds { i64, float* }, { i64, float* }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, float* }, { i64, float* }* %92, i32 0, i32 1
  %96 = load float*, float** %95, align 8
  %97 = call i32 @hsv_to_rgb(i64 %94, float* %96)
  %98 = bitcast %struct.TYPE_7__* %6 to { i64, float* }*
  %99 = getelementptr inbounds { i64, float* }, { i64, float* }* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds { i64, float* }, { i64, float* }* %98, i32 0, i32 1
  %102 = load float*, float** %101, align 8
  %103 = call i32 @constrain_image(i64 %100, float* %102)
  ret void
}

declare dso_local i32 @rgb_to_hsv(i64, float*) #1

declare dso_local i32 @scale_image_channel(i64, float*, i32, float) #1

declare dso_local i32 @hsv_to_rgb(i64, float*) #1

declare dso_local i32 @constrain_image(i64, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
