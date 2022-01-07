; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_dither.c_swri_get_dither.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_dither.c_swri_get_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global double 0.000000e+00, align 8
@SWR_DITHER_NB = common dso_local global i32 0, align 4
@TMP_EXTRA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swri_get_dither(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 2
  %23 = call double* @av_malloc_array(i32 %22, i32 8)
  store double* %23, double** %13, align 8
  %24 = load double*, double** %13, align 8
  %25 = icmp ne double* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %171

29:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = mul i32 %36, 1664525
  %38 = add i32 %37, 1013904223
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %49 [
    i32 129, label %43
  ]

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = uitofp i32 %44 to double
  %46 = load double, double* @UINT_MAX, align 8
  %47 = fdiv double %45, %46
  %48 = fsub double %47, 5.000000e-01
  store double %48, double* %15, align 8
  br label %71

49:                                               ; preds = %35
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SWR_DITHER_NB, align 4
  %55 = icmp slt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @av_assert0(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = uitofp i32 %58 to double
  %60 = load double, double* @UINT_MAX, align 8
  %61 = fdiv double %59, %60
  store double %61, double* %15, align 8
  %62 = load i32, i32* %10, align 4
  %63 = mul i32 %62, 1664525
  %64 = add i32 %63, 1013904223
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = uitofp i32 %65 to double
  %67 = load double, double* @UINT_MAX, align 8
  %68 = fdiv double %66, %67
  %69 = load double, double* %15, align 8
  %70 = fsub double %69, %68
  store double %70, double* %15, align 8
  br label %71

71:                                               ; preds = %49, %43
  %72 = load double, double* %15, align 8
  %73 = load double*, double** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %73, i64 %75
  store double %72, double* %76, align 8
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %30

80:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %165, %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %168

85:                                               ; preds = %81
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %90 [
    i32 128, label %104
  ]

90:                                               ; preds = %85
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SWR_DITHER_NB, align 4
  %96 = icmp slt i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @av_assert0(i32 %97)
  %99 = load double*, double** %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  %103 = load double, double* %102, align 8
  store double %103, double* %16, align 8
  br label %128

104:                                              ; preds = %85
  %105 = load double*, double** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %105, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fneg double %109
  %111 = load double*, double** %13, align 8
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %111, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fmul double 2.000000e+00, %116
  %118 = fadd double %110, %117
  %119 = load double*, double** %13, align 8
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %119, i64 %122
  %124 = load double, double* %123, align 8
  %125 = fsub double %118, %124
  %126 = call double @sqrt(i32 6)
  %127 = fdiv double %125, %126
  store double %127, double* %16, align 8
  br label %128

128:                                              ; preds = %104, %90
  %129 = load double, double* %12, align 8
  %130 = load double, double* %16, align 8
  %131 = fmul double %130, %129
  store double %131, double* %16, align 8
  %132 = load i32, i32* %11, align 4
  switch i32 %132, label %162 [
    i32 131, label %133
    i32 130, label %140
    i32 132, label %147
    i32 133, label %155
  ]

133:                                              ; preds = %128
  %134 = load double, double* %16, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = bitcast i8* %135 to double*
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %136, i64 %138
  store double %134, double* %139, align 8
  br label %164

140:                                              ; preds = %128
  %141 = load double, double* %16, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = bitcast i8* %142 to double*
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, double* %143, i64 %145
  store double %141, double* %146, align 8
  br label %164

147:                                              ; preds = %128
  %148 = load double, double* %16, align 8
  %149 = fptrunc double %148 to float
  %150 = load i8*, i8** %8, align 8
  %151 = bitcast i8* %150 to float*
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  store float %149, float* %154, align 4
  br label %164

155:                                              ; preds = %128
  %156 = load double, double* %16, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = bitcast i8* %157 to double*
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %158, i64 %160
  store double %156, double* %161, align 8
  br label %164

162:                                              ; preds = %128
  %163 = call i32 @av_assert0(i32 0)
  br label %164

164:                                              ; preds = %162, %155, %147, %140, %133
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %81

168:                                              ; preds = %81
  %169 = load double*, double** %13, align 8
  %170 = call i32 @av_free(double* %169)
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %168, %26
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local double* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @av_free(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
