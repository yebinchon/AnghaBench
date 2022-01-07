; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_nightmare.c_reconstruct_picture.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_nightmare.c_reconstruct_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { float*, float*, float*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, float* }

@.str = private unnamed_addr constant [9 x i8] c"mag: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reconstruct_picture(%struct.TYPE_16__* %0, float* %1, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %2, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %3, float %4, float %5, float %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__, align 8
  %19 = alloca float, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %10, align 8
  store float* %1, float** %11, align 8
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  store i32 %7, i32* %15, align 4
  store i32 %8, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %100, %9
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %103

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  call void @make_image(%struct.TYPE_18__* sret %18, i32 %26, i32 %28, i32 %30)
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 3
  %32 = load float*, float** %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store float* %32, float** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %36 = load float*, float** %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  store float* %36, float** %38, align 8
  %39 = load float*, float** %11, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  store float* %39, float** %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = call i32 @forward_network(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = call i32 @backward_network(%struct.TYPE_16__* %44)
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %47, %49
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %50, %52
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 3
  %57 = load float*, float** %56, align 8
  %58 = call i32 @axpy_cpu(i32 %53, float 1.000000e+00, float* %55, i32 1, float* %57, i32 1)
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %60, %62
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %63, %65
  %67 = load float, float* %12, align 4
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 3
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 3
  %71 = load float*, float** %70, align 8
  %72 = call i32 @axpy_cpu(i32 %66, float %67, float* %69, i32 1, float* %71, i32 1)
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %74, %76
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %77, %79
  %81 = load float, float* %13, align 4
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 3
  %83 = load float*, float** %82, align 8
  %84 = call i32 @scal_cpu(i32 %80, float %81, float* %83, i32 1)
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %88, %90
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %91, %93
  %95 = call float @mag_array(float* %86, i32 %94)
  store float %95, float* %19, align 4
  %96 = load float, float* %19, align 4
  %97 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), float %96)
  %98 = call i32 @constrain_image(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %2)
  %99 = call i32 @free_image(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %18)
  br label %100

100:                                              ; preds = %24
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %20

103:                                              ; preds = %20
  ret void
}

declare dso_local void @make_image(%struct.TYPE_18__* sret, i32, i32, i32) #1

declare dso_local i32 @forward_network(%struct.TYPE_16__*) #1

declare dso_local i32 @backward_network(%struct.TYPE_16__*) #1

declare dso_local i32 @axpy_cpu(i32, float, float*, i32, float*, i32) #1

declare dso_local i32 @scal_cpu(i32, float, float*, i32) #1

declare dso_local float @mag_array(float*, i32) #1

declare dso_local i32 @printf(i8*, float) #1

declare dso_local i32 @constrain_image(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

declare dso_local i32 @free_image(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
