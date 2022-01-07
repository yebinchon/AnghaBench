; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_forward_deconvolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_forward_deconvolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, float*, i32, i32, i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_deconvolutional_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = bitcast %struct.TYPE_7__* %4 to { float*, float* }*
  %13 = getelementptr inbounds { float*, float* }, { float*, float* }* %12, i32 0, i32 0
  store float* %1, float** %13, align 8
  %14 = getelementptr inbounds { float*, float* }, { float*, float* }* %12, i32 0, i32 1
  store float* %2, float** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %16, %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %31, %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @fill_cpu(i32 %34, i32 0, i64 %36, i32 1)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %95, %3
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %45 = load float*, float** %44, align 8
  store float* %45, float** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %47 = load float*, float** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %48, %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %47, i64 %58
  store float* %59, float** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %61 = load float*, float** %60, align 8
  store float* %61, float** %11, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load float*, float** %9, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load float*, float** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load float*, float** %11, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @gemm_cpu(i32 1, i32 0, i32 %62, i32 %63, i32 %64, i32 1, float* %65, i32 %66, float* %67, i32 %68, i32 0, float* %69, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 16
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 15
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 14
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %87, %92
  %94 = call i32 @col2im_cpu(float* %73, i32 %75, i32 %77, i32 %79, i32 %81, i32 %83, i32 %85, i64 %93)
  br label %95

95:                                               ; preds = %43
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %38

98:                                               ; preds = %38
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 13
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = bitcast %struct.TYPE_7__* %4 to { float*, float* }*
  %104 = getelementptr inbounds { float*, float* }, { float*, float* }* %103, i32 0, i32 0
  %105 = load float*, float** %104, align 8
  %106 = getelementptr inbounds { float*, float* }, { float*, float* }* %103, i32 0, i32 1
  %107 = load float*, float** %106, align 8
  %108 = call i32 @forward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, float* %105, float* %107)
  br label %124

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %119, %121
  %123 = call i32 @add_bias(i64 %111, i32 %113, i32 %115, i32 %117, i32 %122)
  br label %124

124:                                              ; preds = %109, %102
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %128, %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %131, %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %134, %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @activate_array(i64 %126, i32 %137, i32 %139)
  ret void
}

declare dso_local i32 @fill_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @gemm_cpu(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

declare dso_local i32 @col2im_cpu(float*, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @forward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, float*, float*) #1

declare dso_local i32 @add_bias(i64, i32, i32, i32, i32) #1

declare dso_local i32 @activate_array(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
