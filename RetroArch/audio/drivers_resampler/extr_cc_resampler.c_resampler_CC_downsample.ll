; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers_resampler/extr_cc_resampler.c_resampler_CC_downsample.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers_resampler/extr_cc_resampler.c_resampler_CC_downsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resampler_data = type { i32, double, i32, i64, i64 }
%struct.TYPE_2__ = type { double, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.resampler_data*)* @resampler_CC_downsample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resampler_CC_downsample(i8* %0, %struct.resampler_data* %1) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.resampler_data* %1, %struct.resampler_data** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %5, align 8
  %25 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %26 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %31 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %7, align 8
  %35 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %36 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %8, align 8
  %39 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %40 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fdiv double 1.000000e+00, %41
  %43 = fptrunc double %42 to float
  store float %43, float* %9, align 4
  %44 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %45 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = fptrunc double %46 to float
  store float %47, float* %10, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = bitcast i32* %51 to float*
  %53 = call i32 @_mm_loadu_ps(float* %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = bitcast i32* %57 to float*
  %59 = call i32 @_mm_loadu_ps(float* %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %166, %2
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %61, %62
  br i1 %63, label %64, label %167

64:                                               ; preds = %60
  %65 = load float, float* %9, align 4
  %66 = fpext float %65 to double
  %67 = call i32 @_mm_set_ps1(double %66)
  %68 = call i32 @_mm_set_ps(double 3.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %69 = call i32 @_mm_mul_ps(i32 %67, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = call i32 @_mm_set_ps1(double %72)
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @_mm_sub_ps(i32 %73, i32 %74)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %78 = call i32 @_mm_add_ps(i32 %76, i32 %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %81 = call i32 @_mm_sub_ps(i32 %79, i32 %80)
  store i32 %81, i32* %21, align 4
  %82 = load float, float* %10, align 4
  %83 = fpext float %82 to double
  %84 = call i32 @_mm_set_ps1(double %83)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @_mm_mul_ps(i32 %85, i32 %86)
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %22, align 4
  %90 = call i32 @_mm_mul_ps(i32 %88, i32 %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %95 = call i32 @_mm_min_ps(i32 %93, i32 %94)
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = call i32 @_mm_set_ps1(double 5.000000e-01)
  %98 = call i32 @_mm_min_ps(i32 %96, i32 %97)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @_mm_set_ps1(double -5.000000e-01)
  %101 = call i32 @_mm_max_ps(i32 %99, i32 %100)
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %21, align 4
  %103 = call i32 @_mm_set_ps1(double -5.000000e-01)
  %104 = call i32 @_mm_max_ps(i32 %102, i32 %103)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %21, align 4
  %107 = call i32 @_mm_sub_ps(i32 %105, i32 %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @_MM_SHUFFLE(i32 1, i32 1, i32 0, i32 0)
  %111 = call i32 @_mm_shuffle_ps(i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @_MM_SHUFFLE(i32 3, i32 3, i32 2, i32 2)
  %115 = call i32 @_mm_shuffle_ps(i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %16, align 4
  %116 = call i32 (...) @_mm_setzero_ps()
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @_mm_loadl_pi(i32 %116, i32* %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @_MM_SHUFFLE(i32 1, i32 0, i32 1, i32 0)
  %122 = call i32 @_mm_shuffle_ps(i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @_mm_mul_ps(i32 %124, i32 %125)
  %127 = call i32 @_mm_add_ps(i32 %123, i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @_mm_mul_ps(i32 %129, i32 %130)
  %132 = call i32 @_mm_add_ps(i32 %128, i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = fadd double %135, 1.000000e+00
  store double %136, double* %134, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %6, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load double, double* %140, align 8
  %142 = load float, float* %9, align 4
  %143 = fpext float %142 to double
  %144 = fadd double %143, 5.000000e-01
  %145 = fcmp ogt double %141, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %64
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @_mm_storel_pi(i32* %147, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @_MM_SHUFFLE(i32 1, i32 0, i32 3, i32 2)
  %153 = call i32 @_mm_shuffle_ps(i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 (...) @_mm_setzero_ps()
  %156 = call i32 @_MM_SHUFFLE(i32 1, i32 0, i32 3, i32 2)
  %157 = call i32 @_mm_shuffle_ps(i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %12, align 4
  %158 = load float, float* %9, align 4
  %159 = fpext float %158 to double
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load double, double* %161, align 8
  %163 = fsub double %162, %159
  store double %163, double* %161, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %8, align 8
  br label %166

166:                                              ; preds = %146, %64
  br label %60

167:                                              ; preds = %60
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = bitcast i32* %171 to float*
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @_mm_storeu_ps(float* %172, i32 %173)
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = bitcast i32* %178 to float*
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @_mm_storeu_ps(float* %179, i32 %180)
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %184 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = ptrtoint i32* %182 to i64
  %188 = ptrtoint i32* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 4
  %191 = trunc i64 %190 to i32
  %192 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %193 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  ret void
}

declare dso_local i32 @_mm_loadu_ps(float*) #1

declare dso_local i32 @_mm_mul_ps(i32, i32) #1

declare dso_local i32 @_mm_set_ps1(double) #1

declare dso_local i32 @_mm_set_ps(double, double, double, double) #1

declare dso_local i32 @_mm_sub_ps(i32, i32) #1

declare dso_local i32 @_mm_add_ps(i32, i32) #1

declare dso_local i32 @_mm_min_ps(i32, i32) #1

declare dso_local i32 @_mm_max_ps(i32, i32) #1

declare dso_local i32 @_mm_shuffle_ps(i32, i32, i32) #1

declare dso_local i32 @_MM_SHUFFLE(i32, i32, i32, i32) #1

declare dso_local i32 @_mm_loadl_pi(i32, i32*) #1

declare dso_local i32 @_mm_setzero_ps(...) #1

declare dso_local i32 @_mm_storel_pi(i32*, i32) #1

declare dso_local i32 @_mm_storeu_ps(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
