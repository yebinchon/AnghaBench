; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_hue_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_hue_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hue_image(i64 %0, float* %1, float %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_6__* %4 to { i64, float* }*
  %8 = getelementptr inbounds { i64, float* }, { i64, float* }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, float* }, { i64, float* }* %7, i32 0, i32 1
  store float* %1, float** %9, align 8
  store float %2, float* %5, align 4
  %10 = bitcast %struct.TYPE_6__* %4 to { i64, float* }*
  %11 = getelementptr inbounds { i64, float* }, { i64, float* }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, float* }, { i64, float* }* %10, i32 0, i32 1
  %14 = load float*, float** %13, align 8
  %15 = call i32 @rgb_to_hsv(i64 %12, float* %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %70, %3
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %19, %21
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %26 = load float*, float** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float, float* %5, align 4
  %32 = fadd float %30, %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %34 = load float*, float** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  store float %32, float* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %39 = load float*, float** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fcmp ogt float %43, 1.000000e+00
  br i1 %44, label %45, label %53

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %47 = load float*, float** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fsub float %51, 1.000000e+00
  store float %52, float* %50, align 4
  br label %53

53:                                               ; preds = %45, %24
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fcmp olt float %59, 0.000000e+00
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %63 = load float*, float** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fadd float %67, 1.000000e+00
  store float %68, float* %66, align 4
  br label %69

69:                                               ; preds = %61, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %16

73:                                               ; preds = %16
  %74 = bitcast %struct.TYPE_6__* %4 to { i64, float* }*
  %75 = getelementptr inbounds { i64, float* }, { i64, float* }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, float* }, { i64, float* }* %74, i32 0, i32 1
  %78 = load float*, float** %77, align 8
  %79 = call i32 @hsv_to_rgb(i64 %76, float* %78)
  %80 = bitcast %struct.TYPE_6__* %4 to { i64, float* }*
  %81 = getelementptr inbounds { i64, float* }, { i64, float* }* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds { i64, float* }, { i64, float* }* %80, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = call i32 @constrain_image(i64 %82, float* %84)
  ret void
}

declare dso_local i32 @rgb_to_hsv(i64, float*) #1

declare dso_local i32 @hsv_to_rgb(i64, float*) #1

declare dso_local i32 @constrain_image(i64, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
