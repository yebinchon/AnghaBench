; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_3_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_3_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_3_1(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %17, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to float*
  store float* %36, float** %23, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 10
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to float*
  store float* %44, float** %24, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to float*
  store float* %52, float** %22, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 10
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to float*
  store float* %60, float** %25, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @get_lfe(i32 %63, i32 %64, i32 %67, i32 %70, float* %18, float* %13, i32 %73)
  %75 = load float, float* %14, align 4
  %76 = call float @llvm.fabs.f32(float %75)
  %77 = fsub float 1.000000e+00, %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call float @powf(float %77, i32 %80)
  %82 = load float, float* %15, align 4
  %83 = fadd float %82, 1.000000e+00
  %84 = fmul float %83, 5.000000e-01
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call float @powf(float %84, i32 %87)
  %89 = fmul float %81, %88
  %90 = load float, float* %13, align 4
  %91 = fmul float %89, %90
  store float %91, float* %21, align 4
  %92 = load float, float* %14, align 4
  %93 = fadd float %92, 1.000000e+00
  %94 = fmul float 5.000000e-01, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call float @powf(float %94, i32 %97)
  %99 = load float, float* %15, align 4
  %100 = fadd float %99, 1.000000e+00
  %101 = fmul float %100, 5.000000e-01
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call float @powf(float %101, i32 %104)
  %106 = fmul float %98, %105
  %107 = load float, float* %13, align 4
  %108 = fmul float %106, %107
  store float %108, float* %19, align 4
  %109 = load float, float* %14, align 4
  %110 = fneg float %109
  %111 = fadd float %110, 1.000000e+00
  %112 = fmul float 5.000000e-01, %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call float @powf(float %112, i32 %115)
  %117 = load float, float* %15, align 4
  %118 = fadd float %117, 1.000000e+00
  %119 = fmul float %118, 5.000000e-01
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call float @powf(float %119, i32 %122)
  %124 = fmul float %116, %123
  %125 = load float, float* %13, align 4
  %126 = fmul float %124, %125
  store float %126, float* %20, align 4
  %127 = load float, float* %19, align 4
  %128 = load float, float* %10, align 4
  %129 = call float @cosf(float %128) #4
  %130 = fmul float %127, %129
  %131 = load float*, float** %23, align 8
  %132 = load i32, i32* %16, align 4
  %133 = mul nsw i32 2, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %131, i64 %134
  store float %130, float* %135, align 4
  %136 = load float, float* %19, align 4
  %137 = load float, float* %10, align 4
  %138 = call float @sinf(float %137) #4
  %139 = fmul float %136, %138
  %140 = load float*, float** %23, align 8
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 2, %141
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %140, i64 %144
  store float %139, float* %145, align 4
  %146 = load float, float* %20, align 4
  %147 = load float, float* %11, align 4
  %148 = call float @cosf(float %147) #4
  %149 = fmul float %146, %148
  %150 = load float*, float** %24, align 8
  %151 = load i32, i32* %16, align 4
  %152 = mul nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %150, i64 %153
  store float %149, float* %154, align 4
  %155 = load float, float* %20, align 4
  %156 = load float, float* %11, align 4
  %157 = call float @sinf(float %156) #4
  %158 = fmul float %155, %157
  %159 = load float*, float** %24, align 8
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 2, %160
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %159, i64 %163
  store float %158, float* %164, align 4
  %165 = load float, float* %21, align 4
  %166 = load float, float* %12, align 4
  %167 = call float @cosf(float %166) #4
  %168 = fmul float %165, %167
  %169 = load float*, float** %22, align 8
  %170 = load i32, i32* %16, align 4
  %171 = mul nsw i32 2, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %169, i64 %172
  store float %168, float* %173, align 4
  %174 = load float, float* %21, align 4
  %175 = load float, float* %12, align 4
  %176 = call float @sinf(float %175) #4
  %177 = fmul float %174, %176
  %178 = load float*, float** %22, align 8
  %179 = load i32, i32* %16, align 4
  %180 = mul nsw i32 2, %179
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %178, i64 %182
  store float %177, float* %183, align 4
  %184 = load float, float* %18, align 4
  %185 = load float, float* %12, align 4
  %186 = call float @cosf(float %185) #4
  %187 = fmul float %184, %186
  %188 = load float*, float** %25, align 8
  %189 = load i32, i32* %16, align 4
  %190 = mul nsw i32 2, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %188, i64 %191
  store float %187, float* %192, align 4
  %193 = load float, float* %18, align 4
  %194 = load float, float* %12, align 4
  %195 = call float @sinf(float %194) #4
  %196 = fmul float %193, %195
  %197 = load float*, float** %25, align 8
  %198 = load i32, i32* %16, align 4
  %199 = mul nsw i32 2, %198
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %197, i64 %201
  store float %196, float* %202, align 4
  ret void
}

declare dso_local i32 @get_lfe(i32, i32, i32, i32, float*, float*, i32) #1

declare dso_local float @powf(float, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #3

; Function Attrs: nounwind
declare dso_local float @sinf(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
