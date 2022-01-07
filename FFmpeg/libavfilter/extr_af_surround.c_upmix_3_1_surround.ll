; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_3_1_surround.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_3_1_surround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, float, i32)* @upmix_3_1_surround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_3_1_surround(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %19, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to float*
  store float* %37, float** %24, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to float*
  store float* %45, float** %25, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to float*
  store float* %53, float** %23, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to float*
  store float* %61, float** %26, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @get_lfe(i32 %64, i32 %65, i32 %68, i32 %71, float* %20, float* %14, i32 %74)
  %76 = load float, float* %16, align 4
  %77 = fadd float %76, 1.000000e+00
  %78 = fmul float 5.000000e-01, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call float @powf(float %78, i32 %81)
  %83 = load float, float* %17, align 4
  %84 = fadd float %83, 1.000000e+00
  %85 = fmul float %84, 5.000000e-01
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call float @powf(float %85, i32 %88)
  %90 = fmul float %82, %89
  %91 = load float, float* %15, align 4
  %92 = fmul float %90, %91
  store float %92, float* %21, align 4
  %93 = load float, float* %16, align 4
  %94 = fneg float %93
  %95 = fadd float %94, 1.000000e+00
  %96 = fmul float 5.000000e-01, %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call float @powf(float %96, i32 %99)
  %101 = load float, float* %17, align 4
  %102 = fadd float %101, 1.000000e+00
  %103 = fmul float %102, 5.000000e-01
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call float @powf(float %103, i32 %106)
  %108 = fmul float %100, %107
  %109 = load float, float* %15, align 4
  %110 = fmul float %108, %109
  store float %110, float* %22, align 4
  %111 = load float, float* %21, align 4
  %112 = load float, float* %11, align 4
  %113 = call float @cosf(float %112) #3
  %114 = fmul float %111, %113
  %115 = load float*, float** %24, align 8
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 2, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %115, i64 %118
  store float %114, float* %119, align 4
  %120 = load float, float* %21, align 4
  %121 = load float, float* %11, align 4
  %122 = call float @sinf(float %121) #3
  %123 = fmul float %120, %122
  %124 = load float*, float** %24, align 8
  %125 = load i32, i32* %18, align 4
  %126 = mul nsw i32 2, %125
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %124, i64 %128
  store float %123, float* %129, align 4
  %130 = load float, float* %22, align 4
  %131 = load float, float* %12, align 4
  %132 = call float @cosf(float %131) #3
  %133 = fmul float %130, %132
  %134 = load float*, float** %25, align 8
  %135 = load i32, i32* %18, align 4
  %136 = mul nsw i32 2, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %134, i64 %137
  store float %133, float* %138, align 4
  %139 = load float, float* %22, align 4
  %140 = load float, float* %12, align 4
  %141 = call float @sinf(float %140) #3
  %142 = fmul float %139, %141
  %143 = load float*, float** %25, align 8
  %144 = load i32, i32* %18, align 4
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %143, i64 %147
  store float %142, float* %148, align 4
  %149 = load float, float* %14, align 4
  %150 = load float, float* %13, align 4
  %151 = call float @cosf(float %150) #3
  %152 = fmul float %149, %151
  %153 = load float*, float** %23, align 8
  %154 = load i32, i32* %18, align 4
  %155 = mul nsw i32 2, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  store float %152, float* %157, align 4
  %158 = load float, float* %14, align 4
  %159 = load float, float* %13, align 4
  %160 = call float @sinf(float %159) #3
  %161 = fmul float %158, %160
  %162 = load float*, float** %23, align 8
  %163 = load i32, i32* %18, align 4
  %164 = mul nsw i32 2, %163
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %162, i64 %166
  store float %161, float* %167, align 4
  %168 = load float, float* %20, align 4
  %169 = load float, float* %13, align 4
  %170 = call float @cosf(float %169) #3
  %171 = fmul float %168, %170
  %172 = load float*, float** %26, align 8
  %173 = load i32, i32* %18, align 4
  %174 = mul nsw i32 2, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %172, i64 %175
  store float %171, float* %176, align 4
  %177 = load float, float* %20, align 4
  %178 = load float, float* %13, align 4
  %179 = call float @sinf(float %178) #3
  %180 = fmul float %177, %179
  %181 = load float*, float** %26, align 8
  %182 = load i32, i32* %18, align 4
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %181, i64 %185
  store float %180, float* %186, align 4
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
