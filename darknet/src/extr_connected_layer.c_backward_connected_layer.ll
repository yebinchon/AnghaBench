; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_connected_layer.c_backward_connected_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_connected_layer.c_backward_connected_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, float*, i32, float*, float*, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_connected_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = bitcast %struct.TYPE_7__* %4 to { float*, float* }*
  %12 = getelementptr inbounds { float*, float* }, { float*, float* }* %11, i32 0, i32 0
  store float* %1, float** %12, align 8
  %13 = getelementptr inbounds { float*, float* }, { float*, float* }* %11, i32 0, i32 1
  store float* %2, float** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %17, %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %24 = load float*, float** %23, align 8
  %25 = call i32 @gradient_array(i32 %15, i32 %20, i32 %22, float* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = bitcast %struct.TYPE_7__* %4 to { float*, float* }*
  %31 = getelementptr inbounds { float*, float* }, { float*, float* }* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds { float*, float* }, { float*, float* }* %30, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  %35 = call i32 @backward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, float* %32, float* %34)
  br label %46

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @backward_bias(i32 %38, float* %40, i32 %42, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %36, %29
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %5, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %54 = load float*, float** %53, align 8
  store float* %54, float** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %56 = load float*, float** %55, align 8
  store float* %56, float** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %58 = load float*, float** %57, align 8
  store float* %58, float** %10, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load float*, float** %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load float*, float** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load float*, float** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gemm(i32 1, i32 0, i32 %59, i32 %60, i32 %61, i32 1, float* %62, i32 %63, float* %64, i32 %65, i32 1, float* %66, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %6, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %7, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %76 = load float*, float** %75, align 8
  store float* %76, float** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %78 = load float*, float** %77, align 8
  store float* %78, float** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %80 = load float*, float** %79, align 8
  store float* %80, float** %10, align 8
  %81 = load float*, float** %10, align 8
  %82 = icmp ne float* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %46
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load float*, float** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load float*, float** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load float*, float** %10, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @gemm(i32 0, i32 0, i32 %84, i32 %85, i32 %86, i32 1, float* %87, i32 %88, float* %89, i32 %90, i32 1, float* %91, i32 %92)
  br label %94

94:                                               ; preds = %83, %46
  ret void
}

declare dso_local i32 @gradient_array(i32, i32, i32, float*) #1

declare dso_local i32 @backward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, float*, float*) #1

declare dso_local i32 @backward_bias(i32, float*, i32, i32, i32) #1

declare dso_local i32 @gemm(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
