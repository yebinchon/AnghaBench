; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_backward_deconvolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_backward_deconvolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float*, float*, i32, i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { float*, float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_deconvolutional_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 18
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %19, %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 17
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 14
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gradient_array(i32 %17, i32 %22, i32 %24, i64 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 16
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @backward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1)
  br label %48

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 15
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %43, %45
  %47 = call i32 @backward_bias(i32 %35, i64 %37, i32 %39, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %33, %31
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %158, %48
  %50 = load i32, i32* %3, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %161

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %58, %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %61, %63
  store i32 %64, i32* %5, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %66, %68
  store i32 %69, i32* %6, align 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %71 = load float*, float** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %71, i64 %77
  store float* %78, float** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %80 = load float*, float** %79, align 8
  store float* %80, float** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %82 = load float*, float** %81, align 8
  store float* %82, float** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 14
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %85, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %84, %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 13
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %102 = load i32, i32* %101, align 8
  %103 = load float*, float** %8, align 8
  %104 = call i32 @im2col_cpu(i64 %90, i32 %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102, float* %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load float*, float** %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load float*, float** %8, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load float*, float** %9, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @gemm_cpu(i32 0, i32 1, i32 %105, i32 %106, i32 %107, i32 1, float* %108, i32 %109, float* %110, i32 %111, i32 1, float* %112, i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %116 = load float*, float** %115, align 8
  %117 = icmp ne float* %116, null
  br i1 %117, label %118, label %157

118:                                              ; preds = %54
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %10, align 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %122, %124
  store i32 %125, i32* %11, align 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %127, %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %130, %132
  store i32 %133, i32* %12, align 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 10
  %135 = load float*, float** %134, align 8
  store float* %135, float** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %137 = load float*, float** %136, align 8
  store float* %137, float** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %139 = load float*, float** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %139, i64 %145
  store float* %146, float** %15, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load float*, float** %13, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load float*, float** %14, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load float*, float** %15, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @gemm_cpu(i32 0, i32 0, i32 %147, i32 %148, i32 %149, i32 1, float* %150, i32 %151, float* %152, i32 %153, i32 1, float* %154, i32 %155)
  br label %157

157:                                              ; preds = %118, %54
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %49

161:                                              ; preds = %49
  ret void
}

declare dso_local i32 @gradient_array(i32, i32, i32, i64) #1

declare dso_local i32 @backward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i32 @backward_bias(i32, i64, i32, i32, i32) #1

declare dso_local i32 @im2col_cpu(i64, i32, i32, i32, i32, i32, i32, float*) #1

declare dso_local i32 @gemm_cpu(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
