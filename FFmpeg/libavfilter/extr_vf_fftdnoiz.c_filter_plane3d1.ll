; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_plane3d1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_plane3d1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, float, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, float** }

@CURRENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, float*)* @filter_plane3d1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_plane3d1(%struct.TYPE_5__* %0, i32 %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sitofp i32 %62 to float
  store float %63, float* %12, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = fsub float 1.000000e+00, %66
  store float %67, float* %13, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load float**, float*** %69, align 8
  %71 = load i64, i64* @CURRENT, align 8
  %72 = getelementptr inbounds float*, float** %70, i64 %71
  %73 = load float*, float** %72, align 8
  store float* %73, float** %14, align 8
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %241, %3
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %244

78:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %237, %78
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %240

83:                                               ; preds = %79
  %84 = load float*, float** %14, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %84, i64 %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %92, %93
  %95 = mul nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %91, i64 %96
  store float* %97, float** %19, align 8
  %98 = load float*, float** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %98, i64 %104
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %8, align 4
  %108 = mul nsw i32 %106, %107
  %109 = mul nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %105, i64 %110
  store float* %111, float** %20, align 8
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %233, %83
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %236

116:                                              ; preds = %112
  store i32 0, i32* %18, align 4
  br label %117

117:                                              ; preds = %221, %116
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %224

121:                                              ; preds = %117
  %122 = load float*, float** %19, align 8
  %123 = load i32, i32* %18, align 4
  %124 = mul nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %122, i64 %125
  %127 = load float, float* %126, align 4
  store float %127, float* %23, align 4
  %128 = load float*, float** %20, align 8
  %129 = load i32, i32* %18, align 4
  %130 = mul nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %128, i64 %131
  %133 = load float, float* %132, align 4
  store float %133, float* %25, align 4
  %134 = load float*, float** %19, align 8
  %135 = load i32, i32* %18, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %134, i64 %138
  %140 = load float, float* %139, align 4
  store float %140, float* %24, align 4
  %141 = load float*, float** %20, align 8
  %142 = load i32, i32* %18, align 4
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %141, i64 %145
  %147 = load float, float* %146, align 4
  store float %147, float* %26, align 4
  %148 = load float, float* %23, align 4
  %149 = load float, float* %25, align 4
  %150 = fadd float %148, %149
  store float %150, float* %27, align 4
  %151 = load float, float* %24, align 4
  %152 = load float, float* %26, align 4
  %153 = fadd float %151, %152
  store float %153, float* %28, align 4
  %154 = load float, float* %23, align 4
  %155 = load float, float* %25, align 4
  %156 = fsub float %154, %155
  store float %156, float* %29, align 4
  %157 = load float, float* %24, align 4
  %158 = load float, float* %26, align 4
  %159 = fsub float %157, %158
  store float %159, float* %30, align 4
  %160 = load float, float* %27, align 4
  %161 = load float, float* %27, align 4
  %162 = fmul float %160, %161
  %163 = load float, float* %28, align 4
  %164 = load float, float* %28, align 4
  %165 = fmul float %163, %164
  %166 = fadd float %162, %165
  %167 = fadd float %166, 0x3CD203AFA0000000
  store float %167, float* %22, align 4
  %168 = load float, float* %13, align 4
  %169 = load float, float* %22, align 4
  %170 = load float, float* %12, align 4
  %171 = fsub float %169, %170
  %172 = load float, float* %22, align 4
  %173 = fdiv float %171, %172
  %174 = call float @FFMAX(float %168, float %173)
  store float %174, float* %21, align 4
  %175 = load float, float* %21, align 4
  %176 = load float, float* %27, align 4
  %177 = fmul float %176, %175
  store float %177, float* %27, align 4
  %178 = load float, float* %21, align 4
  %179 = load float, float* %28, align 4
  %180 = fmul float %179, %178
  store float %180, float* %28, align 4
  %181 = load float, float* %29, align 4
  %182 = load float, float* %29, align 4
  %183 = fmul float %181, %182
  %184 = load float, float* %30, align 4
  %185 = load float, float* %30, align 4
  %186 = fmul float %184, %185
  %187 = fadd float %183, %186
  %188 = fadd float %187, 0x3CD203AFA0000000
  store float %188, float* %22, align 4
  %189 = load float, float* %13, align 4
  %190 = load float, float* %22, align 4
  %191 = load float, float* %12, align 4
  %192 = fsub float %190, %191
  %193 = load float, float* %22, align 4
  %194 = fdiv float %192, %193
  %195 = call float @FFMAX(float %189, float %194)
  store float %195, float* %21, align 4
  %196 = load float, float* %21, align 4
  %197 = load float, float* %29, align 4
  %198 = fmul float %197, %196
  store float %198, float* %29, align 4
  %199 = load float, float* %21, align 4
  %200 = load float, float* %30, align 4
  %201 = fmul float %200, %199
  store float %201, float* %30, align 4
  %202 = load float, float* %27, align 4
  %203 = load float, float* %29, align 4
  %204 = fadd float %202, %203
  %205 = fmul float %204, 5.000000e-01
  %206 = load float*, float** %19, align 8
  %207 = load i32, i32* %18, align 4
  %208 = mul nsw i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %206, i64 %209
  store float %205, float* %210, align 4
  %211 = load float, float* %28, align 4
  %212 = load float, float* %30, align 4
  %213 = fadd float %211, %212
  %214 = fmul float %213, 5.000000e-01
  %215 = load float*, float** %19, align 8
  %216 = load i32, i32* %18, align 4
  %217 = mul nsw i32 %216, 2
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %215, i64 %219
  store float %214, float* %220, align 4
  br label %221

221:                                              ; preds = %121
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %18, align 4
  br label %117

224:                                              ; preds = %117
  %225 = load i32, i32* %11, align 4
  %226 = load float*, float** %19, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds float, float* %226, i64 %227
  store float* %228, float** %19, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load float*, float** %20, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds float, float* %230, i64 %231
  store float* %232, float** %20, align 8
  br label %233

233:                                              ; preds = %224
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  br label %112

236:                                              ; preds = %112
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %16, align 4
  br label %79

240:                                              ; preds = %79
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %15, align 4
  br label %74

244:                                              ; preds = %74
  ret void
}

declare dso_local float @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
