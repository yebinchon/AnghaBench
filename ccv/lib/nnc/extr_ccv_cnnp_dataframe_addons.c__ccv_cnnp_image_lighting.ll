; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c__ccv_cnnp_image_lighting.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c__ccv_cnnp_image_lighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { float* }

@CCV_32F = common dso_local global i64 0, align 8
@CCV_C3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float, float, float)* @_ccv_cnnp_image_lighting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_image_lighting(%struct.TYPE_5__* %0, float %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @CCV_GET_DATA_TYPE(i32 %17)
  %19 = load i64, i64* @CCV_32F, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @CCV_GET_CHANNEL(i32 %25)
  %27 = load i64, i64* @CCV_C3, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load float, float* %6, align 4
  %32 = fpext float %31 to double
  %33 = fmul double %32, 0xC03F793A92A30553
  %34 = load float, float* %7, align 4
  %35 = fpext float %34 to double
  %36 = fmul double %35, 0x400B952FA78D7822
  %37 = fadd double %33, %36
  %38 = load float, float* %8, align 4
  %39 = fpext float %38 to double
  %40 = fmul double %39, 0x3FDD7475F3A223AB
  %41 = fadd double %37, %40
  %42 = fptrunc double %41 to float
  store float %42, float* %9, align 4
  %43 = load float, float* %6, align 4
  %44 = fpext float %43 to double
  %45 = fmul double %44, 0xC0401B078D92FB1A
  %46 = load float, float* %7, align 4
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0xBF96173B85E80BEC
  %49 = fadd double %45, %48
  %50 = load float, float* %8, align 4
  %51 = fpext float %50 to double
  %52 = fmul double %51, 0xBFEDE731D2E0E303
  %53 = fadd double %49, %52
  %54 = fptrunc double %53 to float
  store float %54, float* %10, align 4
  %55 = load float, float* %6, align 4
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0xC0402EE807BBB624
  %58 = load float, float* %7, align 4
  %59 = fpext float %58 to double
  %60 = fmul double %59, 0xC00AA59FCCB98196
  %61 = fadd double %57, %60
  %62 = load float, float* %8, align 4
  %63 = fpext float %62 to double
  %64 = fmul double %63, 0x3FDEE15A228B4542
  %65 = fadd double %61, %64
  %66 = fptrunc double %65 to float
  store float %66, float* %11, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load float*, float** %76, align 8
  store float* %77, float** %14, align 8
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %129, %4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %78
  %83 = load float*, float** %14, align 8
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %83, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float, float* %9, align 4
  %90 = fadd float %88, %89
  %91 = call float @ccv_clamp(float %90, i32 0, i32 255)
  %92 = load float*, float** %14, align 8
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %92, i64 %95
  store float %91, float* %96, align 4
  %97 = load float*, float** %14, align 8
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 %98, 3
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %97, i64 %101
  %103 = load float, float* %102, align 4
  %104 = load float, float* %10, align 4
  %105 = fadd float %103, %104
  %106 = call float @ccv_clamp(float %105, i32 0, i32 255)
  %107 = load float*, float** %14, align 8
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %108, 3
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %107, i64 %111
  store float %106, float* %112, align 4
  %113 = load float*, float** %14, align 8
  %114 = load i32, i32* %12, align 4
  %115 = mul nsw i32 %114, 3
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %113, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float, float* %11, align 4
  %121 = fadd float %119, %120
  %122 = call float @ccv_clamp(float %121, i32 0, i32 255)
  %123 = load float*, float** %14, align 8
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %124, 3
  %126 = add nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %123, i64 %127
  store float %122, float* %128, align 4
  br label %129

129:                                              ; preds = %82
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %78

132:                                              ; preds = %78
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i64 @CCV_GET_CHANNEL(i32) #1

declare dso_local float @ccv_clamp(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
