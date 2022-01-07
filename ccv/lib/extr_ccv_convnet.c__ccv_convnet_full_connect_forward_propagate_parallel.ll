; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_full_connect_forward_propagate_parallel.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_full_connect_forward_propagate_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { float*, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { float* }

@CCV_32F = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@CCV_B_TRANSPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__**)* @_ccv_convnet_full_connect_forward_propagate_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_convnet_full_connect_forward_propagate_parallel(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %6, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @CCV_GET_DATA_TYPE(i32 %14)
  %16 = load i32, i32* @CCV_32F, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CCV_32F, align 4
  %31 = load i32, i32* @CCV_C1, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CCV_32F, align 4
  %34 = load i32, i32* @CCV_C1, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.TYPE_18__* @ccv_dense_matrix_renew(%struct.TYPE_18__* %21, i32 %24, i32 %29, i32 %32, i32 %35, i32 0)
  %37 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %37, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %7, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load float*, float** %40, align 8
  store float* %41, float** %10, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %77, %3
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %67, %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load float*, float** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  store float %62, float* %66, align 4
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %49

70:                                               ; preds = %49
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load float*, float** %10, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds float, float* %74, i64 %75
  store float* %76, float** %10, align 8
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %42

80:                                               ; preds = %42
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CCV_32F, align 4
  %88 = load i32, i32* @CCV_C1, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  call void @ccv_dense_matrix(%struct.TYPE_18__* sret %11, i32 %83, i32 %86, i32 %89, i32 %92, i32 0)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = load i32, i32* @CCV_B_TRANSPOSE, align 4
  %96 = bitcast %struct.TYPE_18__** %7 to i32**
  %97 = call i32 @ccv_gemm(%struct.TYPE_18__* %93, %struct.TYPE_18__* %11, i32 1, %struct.TYPE_18__* %94, i32 1, i32 %95, i32** %96, i32 0)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load float*, float** %100, align 8
  store float* %101, float** %10, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %80
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %143, %108
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load float*, float** %10, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  %127 = load float, float* %126, align 4
  %128 = call float @ccv_max(i32 0, float %127)
  %129 = load float*, float** %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  store float %128, float* %132, align 4
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %116

136:                                              ; preds = %116
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load float*, float** %10, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds float, float* %140, i64 %141
  store float* %142, float** %10, align 8
  br label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %109

146:                                              ; preds = %109
  br label %147

147:                                              ; preds = %146, %80
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local %struct.TYPE_18__* @ccv_dense_matrix_renew(%struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

declare dso_local void @ccv_dense_matrix(%struct.TYPE_18__* sret, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_gemm(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, i32, i32, i32**, i32) #1

declare dso_local float @ccv_max(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
