; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_barrel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_barrel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i64 }

@M_PI_4 = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i64]*, [4 x i64]*, float*, float*)* @xyz_to_barrel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_barrel(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i64]* %4, [4 x i64]* %5, float* %6, float* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i64]*, align 8
  %14 = alloca [4 x i64]*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [4 x i64]* %4, [4 x i64]** %13, align 8
  store [4 x i64]* %5, [4 x i64]** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  store float 0x3FEFAE1480000000, float* %17, align 4
  %31 = load float*, float** %10, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %10, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  %36 = load float, float* %35, align 4
  %37 = fneg float %36
  %38 = call float @atan2f(float %33, float %37) #3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float, float* %42, align 4
  %44 = fmul float %38, %43
  store float %44, float* %18, align 4
  %45 = load float*, float** %10, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = fneg float %47
  %49 = call float @asinf(float %48) #3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = fmul float %49, %54
  store float %55, float* %19, align 4
  %56 = load float, float* @M_PI_4, align 4
  store float %56, float* %20, align 4
  %57 = load float, float* %19, align 4
  %58 = load float, float* %20, align 4
  %59 = fneg float %58
  %60 = fcmp ogt float %57, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %8
  %62 = load float, float* %19, align 4
  %63 = load float, float* %20, align 4
  %64 = fcmp olt float %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 4, %66
  %68 = sdiv i32 %67, 5
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %22, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %75, 5
  br label %78

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  store i32 %79, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %80 = load float, float* %18, align 4
  %81 = load float, float* @M_PI, align 4
  %82 = fdiv float %80, %81
  %83 = fmul float %82, 0x3FEFAE1480000000
  %84 = fadd float %83, 1.000000e+00
  %85 = load i32, i32* %21, align 4
  %86 = sitofp i32 %85 to float
  %87 = fmul float %84, %86
  %88 = fdiv float %87, 2.000000e+00
  store float %88, float* %25, align 4
  %89 = load float, float* %19, align 4
  %90 = load float, float* %20, align 4
  %91 = fdiv float %89, %90
  %92 = fmul float %91, 0x3FEFAE1480000000
  %93 = fadd float %92, 1.000000e+00
  %94 = load i32, i32* %22, align 4
  %95 = sitofp i32 %94 to float
  %96 = fmul float %93, %95
  %97 = fdiv float %96, 2.000000e+00
  store float %97, float* %26, align 4
  br label %184

98:                                               ; preds = %61, %8
  %99 = load i32, i32* %11, align 4
  %100 = sdiv i32 %99, 5
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %22, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %111

108:                                              ; preds = %98
  %109 = load i32, i32* %21, align 4
  %110 = mul nsw i32 4, %109
  br label %111

111:                                              ; preds = %108, %107
  %112 = phi i32 [ 0, %107 ], [ %110, %108 ]
  store i32 %112, i32* %23, align 4
  %113 = load float, float* %19, align 4
  %114 = fcmp olt float %113, 0.000000e+00
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load float*, float** %10, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %10, align 8
  %120 = getelementptr inbounds float, float* %119, i64 1
  %121 = load float, float* %120, align 4
  %122 = fdiv float %118, %121
  store float %122, float* %25, align 4
  %123 = load float*, float** %10, align 8
  %124 = getelementptr inbounds float, float* %123, i64 2
  %125 = load float, float* %124, align 4
  %126 = fneg float %125
  %127 = load float*, float** %10, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  %129 = load float, float* %128, align 4
  %130 = fdiv float %126, %129
  store float %130, float* %26, align 4
  store i32 0, i32* %24, align 4
  br label %149

131:                                              ; preds = %111
  %132 = load float*, float** %10, align 8
  %133 = getelementptr inbounds float, float* %132, i64 0
  %134 = load float, float* %133, align 4
  %135 = fneg float %134
  %136 = load float*, float** %10, align 8
  %137 = getelementptr inbounds float, float* %136, i64 1
  %138 = load float, float* %137, align 4
  %139 = fdiv float %135, %138
  store float %139, float* %25, align 4
  %140 = load float*, float** %10, align 8
  %141 = getelementptr inbounds float, float* %140, i64 2
  %142 = load float, float* %141, align 4
  %143 = fneg float %142
  %144 = load float*, float** %10, align 8
  %145 = getelementptr inbounds float, float* %144, i64 1
  %146 = load float, float* %145, align 4
  %147 = fdiv float %143, %146
  store float %147, float* %26, align 4
  %148 = load i32, i32* %22, align 4
  store i32 %148, i32* %24, align 4
  br label %149

149:                                              ; preds = %131, %115
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load float*, float** %151, align 8
  %153 = getelementptr inbounds float, float* %152, i64 0
  %154 = load float, float* %153, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load float*, float** %156, align 8
  %158 = getelementptr inbounds float, float* %157, i64 1
  %159 = load float, float* %158, align 4
  %160 = fmul float %154, %159
  %161 = load float, float* %25, align 4
  %162 = fmul float %161, %160
  store float %162, float* %25, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load float*, float** %164, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = load float, float* %26, align 4
  %169 = fmul float %168, %167
  store float %169, float* %26, align 4
  %170 = load i32, i32* %21, align 4
  %171 = sitofp i32 %170 to float
  %172 = fmul float 5.000000e-01, %171
  %173 = load float, float* %25, align 4
  %174 = fmul float %173, 0x3FEFAE1480000000
  %175 = fadd float %174, 1.000000e+00
  %176 = fmul float %172, %175
  store float %176, float* %25, align 4
  %177 = load i32, i32* %22, align 4
  %178 = sitofp i32 %177 to float
  %179 = fmul float 5.000000e-01, %178
  %180 = load float, float* %26, align 4
  %181 = fmul float %180, 0x3FEFAE1480000000
  %182 = fadd float %181, 1.000000e+00
  %183 = fmul float %179, %182
  store float %183, float* %26, align 4
  br label %184

184:                                              ; preds = %149, %78
  %185 = load float, float* %25, align 4
  %186 = call i32 @floorf(float %185)
  store i32 %186, i32* %27, align 4
  %187 = load float, float* %26, align 4
  %188 = call i32 @floorf(float %187)
  store i32 %188, i32* %28, align 4
  %189 = load float, float* %25, align 4
  %190 = load i32, i32* %27, align 4
  %191 = sitofp i32 %190 to float
  %192 = fsub float %189, %191
  %193 = load float*, float** %15, align 8
  store float %192, float* %193, align 4
  %194 = load float, float* %26, align 4
  %195 = load i32, i32* %28, align 4
  %196 = sitofp i32 %195 to float
  %197 = fsub float %194, %196
  %198 = load float*, float** %16, align 8
  store float %197, float* %198, align 4
  store i32 -1, i32* %29, align 4
  br label %199

199:                                              ; preds = %247, %184
  %200 = load i32, i32* %29, align 4
  %201 = icmp slt i32 %200, 3
  br i1 %201, label %202, label %250

202:                                              ; preds = %199
  store i32 -1, i32* %30, align 4
  br label %203

203:                                              ; preds = %243, %202
  %204 = load i32, i32* %30, align 4
  %205 = icmp slt i32 %204, 3
  br i1 %205, label %206, label %246

206:                                              ; preds = %203
  %207 = load i32, i32* %23, align 4
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %27, align 4
  %210 = load i32, i32* %30, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32, i32* %21, align 4
  %213 = sub nsw i32 %212, 1
  %214 = call i64 @av_clip(i32 %211, i32 0, i32 %213)
  %215 = add nsw i64 %208, %214
  %216 = load [4 x i64]*, [4 x i64]** %13, align 8
  %217 = load i32, i32* %29, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i64], [4 x i64]* %216, i64 %219
  %221 = load i32, i32* %30, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4 x i64], [4 x i64]* %220, i64 0, i64 %223
  store i64 %215, i64* %224, align 8
  %225 = load i32, i32* %24, align 4
  %226 = sext i32 %225 to i64
  %227 = load i32, i32* %28, align 4
  %228 = load i32, i32* %29, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32, i32* %22, align 4
  %231 = sub nsw i32 %230, 1
  %232 = call i64 @av_clip(i32 %229, i32 0, i32 %231)
  %233 = add nsw i64 %226, %232
  %234 = load [4 x i64]*, [4 x i64]** %14, align 8
  %235 = load i32, i32* %29, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [4 x i64], [4 x i64]* %234, i64 %237
  %239 = load i32, i32* %30, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x i64], [4 x i64]* %238, i64 0, i64 %241
  store i64 %233, i64* %242, align 8
  br label %243

243:                                              ; preds = %206
  %244 = load i32, i32* %30, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %30, align 4
  br label %203

246:                                              ; preds = %203
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %29, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %29, align 4
  br label %199

250:                                              ; preds = %199
  ret void
}

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

; Function Attrs: nounwind
declare dso_local float @asinf(float) #1

declare dso_local i32 @floorf(float) #2

declare dso_local i64 @av_clip(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
