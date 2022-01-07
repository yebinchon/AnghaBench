; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_grayscale_image_3c.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_grayscale_image_3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, float* }

@__const.grayscale_image_3c.scale = private unnamed_addr constant [3 x float] [float 0x3FD322D0E0000000, float 0x3FE2C8B440000000, float 0x3FBD2F1AA0000000], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grayscale_image_3c(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 3
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = bitcast [3 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([3 x float]* @__const.grayscale_image_3c.scale to i8*), i64 12, i1 false)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %102, %1
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %105

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %98, %18
  %20 = load i32, i32* %2, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %101

24:                                               ; preds = %19
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call float @get_pixel(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, i32 %33, i32 %34, i32 %35)
  %37 = fmul float %32, %36
  %38 = load float, float* %6, align 4
  %39 = fadd float %38, %37
  store float %39, float* %6, align 4
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load float, float* %6, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 0, %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %49, %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %52, %56
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %46, i64 %60
  store float %44, float* %61, align 4
  %62 = load float, float* %6, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %64 = load float*, float** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 1, %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %70, %74
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %64, i64 %78
  store float %62, float* %79, align 4
  %80 = load float, float* %6, align 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 2, %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %85, %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %88, %92
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %82, i64 %96
  store float %80, float* %97, align 4
  br label %98

98:                                               ; preds = %43
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %2, align 4
  br label %19

101:                                              ; preds = %19
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %13

105:                                              ; preds = %13
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @get_pixel(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
