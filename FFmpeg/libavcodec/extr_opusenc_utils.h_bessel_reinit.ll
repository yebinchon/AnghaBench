; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_utils.h_bessel_reinit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_utils.h_bessel_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, float, float, float, i32)* @bessel_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bessel_reinit(%struct.TYPE_3__* %0, float %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %5
  %20 = load float, float* %7, align 4
  %21 = fdiv float 1.000000e+00, %20
  %22 = call float @pow(float 2.000000e+00, float %21)
  %23 = fsub float %22, 7.500000e-01
  %24 = call float @sqrtf(float %23) #3
  %25 = fsub float %24, 5.000000e-01
  %26 = call float @sqrtf(float %25) #3
  %27 = fdiv float 1.000000e+00, %26
  %28 = call float @sqrtf(float 3.000000e+00) #3
  %29 = fdiv float %27, %28
  store float %29, float* %12, align 4
  %30 = load float, float* %12, align 4
  %31 = load float, float* %8, align 4
  %32 = fmul float %30, %31
  %33 = load float, float* %9, align 4
  %34 = fdiv float %32, %33
  store float %34, float* %13, align 4
  %35 = load float, float* %13, align 4
  %36 = fcmp ole float %35, 0.000000e+00
  br i1 %36, label %40, label %37

37:                                               ; preds = %19
  %38 = load float, float* %13, align 4
  %39 = fcmp oge float %38, 2.500000e-01
  br label %40

40:                                               ; preds = %37, %19
  %41 = phi i1 [ true, %19 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  br label %67

43:                                               ; preds = %5
  %44 = call float @sqrtf(float 3.000000e+00) #3
  %45 = load float, float* %7, align 4
  %46 = fdiv float 1.000000e+00, %45
  %47 = call float @pow(float 2.000000e+00, float %46)
  %48 = fsub float %47, 7.500000e-01
  %49 = call float @sqrtf(float %48) #3
  %50 = fsub float %49, 5.000000e-01
  %51 = call float @sqrtf(float %50) #3
  %52 = fmul float %44, %51
  store float %52, float* %12, align 4
  %53 = load float, float* %12, align 4
  %54 = load float, float* %8, align 4
  %55 = fmul float %53, %54
  %56 = load float, float* %9, align 4
  %57 = fdiv float %55, %56
  %58 = fsub float 5.000000e-01, %57
  store float %58, float* %13, align 4
  %59 = load float, float* %13, align 4
  %60 = fcmp ole float %59, 3.750000e-01
  br i1 %60, label %64, label %61

61:                                               ; preds = %43
  %62 = load float, float* %13, align 4
  %63 = fcmp oge float %62, 5.000000e-01
  br label %64

64:                                               ; preds = %61, %43
  %65 = phi i1 [ true, %43 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %40
  %68 = load float, float* @M_PI, align 4
  %69 = load float, float* %13, align 4
  %70 = fmul float %68, %69
  %71 = call float @tanf(float %70) #3
  store float %71, float* %14, align 4
  %72 = load float, float* %14, align 4
  %73 = fmul float 3.000000e+00, %72
  store float %73, float* %15, align 4
  %74 = load float, float* %14, align 4
  %75 = fmul float 3.000000e+00, %74
  store float %75, float* %16, align 4
  %76 = load float, float* %16, align 4
  %77 = load float, float* %15, align 4
  %78 = fadd float 1.000000e+00, %77
  %79 = load float, float* %16, align 4
  %80 = fadd float %78, %79
  %81 = fdiv float %76, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float %81, float* %85, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 0
  %90 = load float, float* %89, align 4
  %91 = fmul float 2.000000e+00, %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  store float %91, float* %95, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 0
  %100 = load float, float* %99, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load float*, float** %102, align 8
  %104 = getelementptr inbounds float, float* %103, i64 2
  store float %100, float* %104, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 0
  %109 = load float, float* %108, align 4
  %110 = fmul float 2.000000e+00, %109
  %111 = load float, float* %16, align 4
  %112 = fdiv float 1.000000e+00, %111
  %113 = fsub float %112, 1.000000e+00
  %114 = fmul float %110, %113
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load float*, float** %116, align 8
  %118 = getelementptr inbounds float, float* %117, i64 0
  store float %114, float* %118, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load float*, float** %120, align 8
  %122 = getelementptr inbounds float, float* %121, i64 0
  %123 = load float, float* %122, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 1
  %128 = load float, float* %127, align 4
  %129 = fadd float %123, %128
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load float*, float** %131, align 8
  %133 = getelementptr inbounds float, float* %132, i64 2
  %134 = load float, float* %133, align 4
  %135 = fadd float %129, %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load float*, float** %137, align 8
  %139 = getelementptr inbounds float, float* %138, i64 0
  %140 = load float, float* %139, align 4
  %141 = fadd float %135, %140
  %142 = fsub float 1.000000e+00, %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load float*, float** %144, align 8
  %146 = getelementptr inbounds float, float* %145, i64 1
  store float %142, float* %146, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %67
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load float*, float** %151, align 8
  %153 = getelementptr inbounds float, float* %152, i64 1
  %154 = load float, float* %153, align 4
  %155 = fmul float %154, -1.000000e+00
  store float %155, float* %153, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load float*, float** %157, align 8
  %159 = getelementptr inbounds float, float* %158, i64 0
  %160 = load float, float* %159, align 4
  %161 = fmul float %160, -1.000000e+00
  store float %161, float* %159, align 4
  br label %162

162:                                              ; preds = %149, %67
  %163 = load i32, i32* %11, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local float @pow(float, float) #2

; Function Attrs: nounwind
declare dso_local float @tanf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
