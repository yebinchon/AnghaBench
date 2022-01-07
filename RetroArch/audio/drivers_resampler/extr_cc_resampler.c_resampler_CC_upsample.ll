; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers_resampler/extr_cc_resampler.c_resampler_CC_upsample.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers_resampler/extr_cc_resampler.c_resampler_CC_upsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resampler_data = type { i32, double, i32, i64, i64 }
%struct.TYPE_2__ = type { double, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.resampler_data*)* @resampler_CC_upsample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resampler_CC_upsample(i8* %0, %struct.resampler_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.resampler_data*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.resampler_data* %1, %struct.resampler_data** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %5, align 8
  %23 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %24 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %29 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %7, align 8
  %33 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %34 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %8, align 8
  %37 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %38 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = call float @float_min(double %39, double 1.000000e+00)
  store float %40, float* %9, align 4
  %41 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %42 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = fdiv double 1.000000e+00, %43
  %45 = fptrunc double %44 to float
  store float %45, float* %10, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = bitcast i32* %49 to float*
  %51 = call i32 @_mm_loadu_ps(float* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = bitcast i32* %55 to float*
  %57 = call i32 @_mm_loadu_ps(float* %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %149, %2
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %59, %60
  br i1 %61, label %62, label %156

62:                                               ; preds = %58
  %63 = call i32 (...) @_mm_setzero_ps()
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @_mm_loadl_pi(i32 %63, i32* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @_MM_SHUFFLE(i32 1, i32 0, i32 3, i32 2)
  %69 = call i32 @_mm_shuffle_ps(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @_MM_SHUFFLE(i32 1, i32 0, i32 3, i32 2)
  %73 = call i32 @_mm_shuffle_ps(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %79, %62
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load double, double* %76, align 8
  %78 = fcmp olt double %77, 1.000000e+00
  br i1 %78, label %79, label %149

79:                                               ; preds = %74
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = call i32 @_mm_set_ps1(double %82)
  %84 = call i32 @_mm_set_ps(double -2.000000e+00, double -1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %85 = call i32 @_mm_add_ps(i32 %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %88 = call i32 @_mm_add_ps(i32 %86, i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %91 = call i32 @_mm_sub_ps(i32 %89, i32 %90)
  store i32 %91, i32* %19, align 4
  %92 = load float, float* %9, align 4
  %93 = fpext float %92 to double
  %94 = call i32 @_mm_set_ps1(double %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @_mm_mul_ps(i32 %95, i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @_mm_mul_ps(i32 %98, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %103 = call i32 @_mm_min_ps(i32 %101, i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %106 = call i32 @_mm_min_ps(i32 %104, i32 %105)
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @_mm_set_ps1(double -5.000000e-01)
  %109 = call i32 @_mm_max_ps(i32 %107, i32 %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @_mm_set_ps1(double -5.000000e-01)
  %112 = call i32 @_mm_max_ps(i32 %110, i32 %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @_mm_sub_ps(i32 %113, i32 %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @_MM_SHUFFLE(i32 1, i32 1, i32 0, i32 0)
  %119 = call i32 @_mm_shuffle_ps(i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @_MM_SHUFFLE(i32 3, i32 3, i32 2, i32 2)
  %123 = call i32 @_mm_shuffle_ps(i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @_mm_mul_ps(i32 %124, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @_mm_mul_ps(i32 %128, i32 %129)
  %131 = call i32 @_mm_add_ps(i32 %127, i32 %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @_MM_SHUFFLE(i32 3, i32 2, i32 3, i32 2)
  %136 = call i32 @_mm_shuffle_ps(i32 %133, i32 %134, i32 %135)
  %137 = call i32 @_mm_add_ps(i32 %132, i32 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @_mm_storel_pi(i32* %138, i32 %139)
  %141 = load float, float* %10, align 4
  %142 = fpext float %141 to double
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load double, double* %144, align 8
  %146 = fadd double %145, %142
  store double %146, double* %144, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %8, align 8
  br label %74

149:                                              ; preds = %74
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load double, double* %151, align 8
  %153 = fsub double %152, 1.000000e+00
  store double %153, double* %151, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %6, align 8
  br label %58

156:                                              ; preds = %58
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = bitcast i32* %160 to float*
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @_mm_storeu_ps(float* %161, i32 %162)
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = bitcast i32* %167 to float*
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @_mm_storeu_ps(float* %168, i32 %169)
  %171 = load i32*, i32** %8, align 8
  %172 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %173 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  %176 = ptrtoint i32* %171 to i64
  %177 = ptrtoint i32* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 4
  %180 = trunc i64 %179 to i32
  %181 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %182 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  ret void
}

declare dso_local float @float_min(double, double) #1

declare dso_local i32 @_mm_loadu_ps(float*) #1

declare dso_local i32 @_mm_loadl_pi(i32, i32*) #1

declare dso_local i32 @_mm_setzero_ps(...) #1

declare dso_local i32 @_mm_shuffle_ps(i32, i32, i32) #1

declare dso_local i32 @_MM_SHUFFLE(i32, i32, i32, i32) #1

declare dso_local i32 @_mm_add_ps(i32, i32) #1

declare dso_local i32 @_mm_set_ps1(double) #1

declare dso_local i32 @_mm_set_ps(double, double, double, double) #1

declare dso_local i32 @_mm_sub_ps(i32, i32) #1

declare dso_local i32 @_mm_mul_ps(i32, i32) #1

declare dso_local i32 @_mm_min_ps(i32, i32) #1

declare dso_local i32 @_mm_max_ps(i32, i32) #1

declare dso_local i32 @_mm_storel_pi(i32*, i32) #1

declare dso_local i32 @_mm_storeu_ps(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
