; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_connected_layer.c_forward_connected_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_connected_layer.c_forward_connected_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, float*, i32, float*, i32, i32, i64 }
%struct.TYPE_7__ = type { float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_connected_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store float* %1, float** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %12, %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %17 = load float*, float** %16, align 8
  %18 = call i32 @fill_cpu(i32 %15, i32 0, float* %17, i32 1)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %26 = load float*, float** %25, align 8
  store float* %26, float** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %28 = load float*, float** %27, align 8
  store float* %28, float** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %30 = load float*, float** %29, align 8
  store float* %30, float** %9, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load float*, float** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load float*, float** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load float*, float** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @gemm(i32 0, i32 1, i32 %31, i32 %32, i32 %33, i32 1, float* %34, i32 %35, float* %36, i32 %37, i32 1, float* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = call i32 @forward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, float* %46)
  br label %58

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @add_bias(float* %50, i32 %52, i32 %54, i32 %56, i32 1)
  br label %58

58:                                               ; preds = %48, %44
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %62, %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @activate_array(float* %60, i32 %65, i32 %67)
  ret void
}

declare dso_local i32 @fill_cpu(i32, i32, float*, i32) #1

declare dso_local i32 @gemm(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

declare dso_local i32 @forward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, float*) #1

declare dso_local i32 @add_bias(float*, i32, i32, i32, i32) #1

declare dso_local i32 @activate_array(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
