; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_synthesis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double*, double*, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 (float*, float*, float*, i32, i32)* }
%struct.TYPE_7__ = type { float (float*, float*, i32)* }
%struct.TYPE_6__ = type { i32 (float*, double*, float*, double, float, i32)* }

@AMR_SUBFRAME_SIZE = common dso_local global i32 0, align 4
@MODE_12k2 = common dso_local global i64 0, align 8
@SHARP_MAX = common dso_local global double 0.000000e+00, align 8
@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@AMR_SAMPLE_BOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, float*, float, float*, float*, i64)* @synthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesis(%struct.TYPE_9__* %0, float* %1, float %2, float* %3, float* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store float* %1, float** %9, align 8
  store float %2, float* %10, align 4
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca float, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, 2.500000e-01
  store double %39, double* %37, align 8
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %27

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %6
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (float*, double*, float*, double, float, i32)*, i32 (float*, double*, float*, double, float, i32)** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load double*, double** %50, align 8
  %52 = load float*, float** %11, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load double*, double** %54, align 8
  %56 = getelementptr inbounds double, double* %55, i64 4
  %57 = load double, double* %56, align 8
  %58 = load float, float* %10, align 4
  %59 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %60 = call i32 %48(float* %23, double* %51, float* %52, double %57, float %58, i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load double*, double** %62, align 8
  %64 = getelementptr inbounds double, double* %63, i64 4
  %65 = load double, double* %64, align 8
  %66 = fcmp ogt double %65, 5.000000e-01
  br i1 %66, label %67, label %137

67:                                               ; preds = %44
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %137, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load float (float*, float*, i32)*, float (float*, float*, i32)** %73, align 8
  %75 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %76 = call float %74(float* %23, float* %23, i32 %75)
  store float %76, float* %17, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load double*, double** %78, align 8
  %80 = getelementptr inbounds double, double* %79, i64 4
  %81 = load double, double* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MODE_12k2, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %70
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load double*, double** %89, align 8
  %91 = getelementptr inbounds double, double* %90, i64 4
  %92 = load double, double* %91, align 8
  %93 = call double @FFMIN(double %92, double 1.000000e+00)
  %94 = fmul double 2.500000e-01, %93
  br label %104

95:                                               ; preds = %70
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load double*, double** %97, align 8
  %99 = getelementptr inbounds double, double* %98, i64 4
  %100 = load double, double* %99, align 8
  %101 = load double, double* @SHARP_MAX, align 8
  %102 = call double @FFMIN(double %100, double %101)
  %103 = fmul double 5.000000e-01, %102
  br label %104

104:                                              ; preds = %95, %87
  %105 = phi double [ %94, %87 ], [ %103, %95 ]
  %106 = fmul double %81, %105
  %107 = fptrunc double %106 to float
  store float %107, float* %18, align 4
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %130, %104
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = load float, float* %18, align 4
  %114 = fpext float %113 to double
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load double*, double** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  %121 = load double, double* %120, align 8
  %122 = fmul double %114, %121
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %23, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fpext float %126 to double
  %128 = fadd double %127, %122
  %129 = fptrunc double %128 to float
  store float %129, float* %125, align 4
  br label %130

130:                                              ; preds = %112
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %108

133:                                              ; preds = %108
  %134 = load float, float* %17, align 4
  %135 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %136 = call i32 @ff_scale_vector_to_given_sum_of_squares(float* %23, float* %23, float %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %67, %44
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %140, align 8
  %142 = load float*, float** %12, align 8
  %143 = load float*, float** %9, align 8
  %144 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %145 = load i32, i32* @LP_FILTER_ORDER, align 4
  %146 = call i32 %141(float* %142, float* %143, float* %23, i32 %144, i32 %145)
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %162, %137
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load float*, float** %12, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  %156 = load float, float* %155, align 4
  %157 = call i64 @fabsf(float %156)
  %158 = load i64, i64* @AMR_SAMPLE_BOUND, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store i32 1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %166

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %147

165:                                              ; preds = %147
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %166

166:                                              ; preds = %165, %160
  %167 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @FFMIN(double, double) #2

declare dso_local i32 @ff_scale_vector_to_given_sum_of_squares(float*, float*, float, i32) #2

declare dso_local i64 @fabsf(float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
