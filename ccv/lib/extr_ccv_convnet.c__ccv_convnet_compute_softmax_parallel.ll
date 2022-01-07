; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_compute_softmax_parallel.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_compute_softmax_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { float* }

@CCV_C1 = common dso_local global i32 0, align 4
@CCV_32F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__**, i32)* @_ccv_convnet_compute_softmax_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_convnet_compute_softmax_parallel(%struct.TYPE_9__* %0, %struct.TYPE_9__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @CCV_GET_CHANNEL(i32 %17)
  %19 = load i32, i32* @CCV_C1, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @CCV_GET_DATA_TYPE(i32 %25)
  %27 = load i32, i32* @CCV_32F, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CCV_32F, align 4
  %37 = load i32, i32* @CCV_C1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CCV_32F, align 4
  %40 = load i32, i32* @CCV_C1, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.TYPE_9__* @ccv_dense_matrix_renew(%struct.TYPE_9__* %32, i32 1, i32 %35, i32 %38, i32 %41, i32 0)
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %43, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = call i32 @ccv_zero(%struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load float*, float** %48, align 8
  store float* %49, float** %10, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load float*, float** %52, align 8
  store float* %53, float** %11, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i64 @ccmalloc(i32 %59)
  %61 = inttoptr i64 %60 to float*
  store float* %61, float** %12, align 8
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %163, %3
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %166

68:                                               ; preds = %62
  %69 = load float*, float** %10, align 8
  %70 = getelementptr inbounds float, float* %69, i64 0
  %71 = load float, float* %70, align 4
  %72 = fpext float %71 to double
  store double %72, double* %13, align 8
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %96, %68
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load float*, float** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fpext float %84 to double
  %86 = load double, double* %13, align 8
  %87 = fcmp ogt double %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load float*, float** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  store double %94, double* %13, align 8
  br label %95

95:                                               ; preds = %88, %79
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %73

99:                                               ; preds = %73
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %124, %99
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = load float*, float** %10, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  %111 = load float, float* %110, align 4
  %112 = fpext float %111 to double
  %113 = load double, double* %13, align 8
  %114 = fsub double %112, %113
  %115 = fptrunc double %114 to float
  %116 = call float @expf(float %115) #3
  %117 = load float*, float** %12, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  store float %116, float* %120, align 4
  %121 = fpext float %116 to double
  %122 = load double, double* %14, align 8
  %123 = fadd double %122, %121
  store double %123, double* %14, align 8
  br label %124

124:                                              ; preds = %106
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %100

127:                                              ; preds = %100
  %128 = load double, double* %14, align 8
  %129 = fdiv double 1.000000e+00, %128
  store double %129, double* %14, align 8
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %153, %127
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %130
  %137 = load float*, float** %12, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  %141 = load float, float* %140, align 4
  %142 = fpext float %141 to double
  %143 = load double, double* %14, align 8
  %144 = fmul double %142, %143
  %145 = load float*, float** %11, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  %149 = load float, float* %148, align 4
  %150 = fpext float %149 to double
  %151 = fadd double %150, %144
  %152 = fptrunc double %151 to float
  store float %152, float* %148, align 4
  br label %153

153:                                              ; preds = %136
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %130

156:                                              ; preds = %130
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load float*, float** %10, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds float, float* %160, i64 %161
  store float* %162, float** %10, align 8
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %62

166:                                              ; preds = %62
  %167 = load float*, float** %12, align 8
  %168 = call i32 @ccfree(float* %167)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local %struct.TYPE_9__* @ccv_dense_matrix_renew(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_zero(%struct.TYPE_9__*) #1

declare dso_local i64 @ccmalloc(i32) #1

; Function Attrs: nounwind
declare dso_local float @expf(float) #2

declare dso_local i32 @ccfree(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
