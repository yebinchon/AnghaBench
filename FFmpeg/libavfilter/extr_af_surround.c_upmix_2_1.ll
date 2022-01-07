; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_2_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_2_1(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %17, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to float*
  store float* %34, float** %21, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to float*
  store float* %42, float** %22, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to float*
  store float* %50, float** %23, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @get_lfe(i32 %53, i32 %54, i32 %57, i32 %60, float* %18, float* %13, i32 %63)
  %65 = load float, float* %14, align 4
  %66 = fadd float %65, 1.000000e+00
  %67 = fmul float 5.000000e-01, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call float @powf(float %67, i32 %70)
  %72 = load float, float* %15, align 4
  %73 = fadd float %72, 1.000000e+00
  %74 = fmul float %73, 5.000000e-01
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call float @powf(float %74, i32 %77)
  %79 = fmul float %71, %78
  %80 = load float, float* %13, align 4
  %81 = fmul float %79, %80
  store float %81, float* %19, align 4
  %82 = load float, float* %14, align 4
  %83 = fneg float %82
  %84 = fadd float %83, 1.000000e+00
  %85 = fmul float 5.000000e-01, %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call float @powf(float %85, i32 %88)
  %90 = load float, float* %15, align 4
  %91 = fadd float %90, 1.000000e+00
  %92 = fmul float %91, 5.000000e-01
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call float @powf(float %92, i32 %95)
  %97 = fmul float %89, %96
  %98 = load float, float* %13, align 4
  %99 = fmul float %97, %98
  store float %99, float* %20, align 4
  %100 = load float, float* %19, align 4
  %101 = load float, float* %10, align 4
  %102 = call float @cosf(float %101) #3
  %103 = fmul float %100, %102
  %104 = load float*, float** %21, align 8
  %105 = load i32, i32* %16, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %104, i64 %107
  store float %103, float* %108, align 4
  %109 = load float, float* %19, align 4
  %110 = load float, float* %10, align 4
  %111 = call float @sinf(float %110) #3
  %112 = fmul float %109, %111
  %113 = load float*, float** %21, align 8
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 2, %114
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %113, i64 %117
  store float %112, float* %118, align 4
  %119 = load float, float* %20, align 4
  %120 = load float, float* %11, align 4
  %121 = call float @cosf(float %120) #3
  %122 = fmul float %119, %121
  %123 = load float*, float** %22, align 8
  %124 = load i32, i32* %16, align 4
  %125 = mul nsw i32 2, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %123, i64 %126
  store float %122, float* %127, align 4
  %128 = load float, float* %20, align 4
  %129 = load float, float* %11, align 4
  %130 = call float @sinf(float %129) #3
  %131 = fmul float %128, %130
  %132 = load float*, float** %22, align 8
  %133 = load i32, i32* %16, align 4
  %134 = mul nsw i32 2, %133
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %132, i64 %136
  store float %131, float* %137, align 4
  %138 = load float, float* %18, align 4
  %139 = load float, float* %12, align 4
  %140 = call float @cosf(float %139) #3
  %141 = fmul float %138, %140
  %142 = load float*, float** %23, align 8
  %143 = load i32, i32* %16, align 4
  %144 = mul nsw i32 2, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %142, i64 %145
  store float %141, float* %146, align 4
  %147 = load float, float* %18, align 4
  %148 = load float, float* %12, align 4
  %149 = call float @sinf(float %148) #3
  %150 = fmul float %147, %149
  %151 = load float*, float** %23, align 8
  %152 = load i32, i32* %16, align 4
  %153 = mul nsw i32 2, %152
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %151, i64 %155
  store float %150, float* %156, align 4
  ret void
}

declare dso_local i32 @get_lfe(i32, i32, i32, i32, float*, float*, i32) #1

declare dso_local float @powf(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
