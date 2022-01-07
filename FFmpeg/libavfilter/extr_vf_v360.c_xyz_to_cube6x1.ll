; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_cube6x1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_cube6x1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float, float, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_cube6x1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_cube6x1(%struct.TYPE_5__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32]*, align 8
  %14 = alloca [4 x i32]*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [4 x i32]* %4, [4 x i32]** %13, align 8
  store [4 x i32]* %5, [4 x i32]** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  %37 = fcmp ogt float %36, 0.000000e+00
  br i1 %37, label %38, label %48

38:                                               ; preds = %8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fdiv float %44, 6.000000e+00
  %46 = fdiv float %41, %45
  %47 = fsub float 1.000000e+00, %46
  br label %53

48:                                               ; preds = %8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load float, float* %50, align 8
  %52 = fsub float 1.000000e+00, %51
  br label %53

53:                                               ; preds = %48, %38
  %54 = phi float [ %47, %38 ], [ %52, %48 ]
  store float %54, float* %17, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 8
  %58 = fcmp ogt float %57, 0.000000e+00
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load float, float* %64, align 4
  %66 = fdiv float %62, %65
  %67 = fsub float 1.000000e+00, %66
  br label %73

68:                                               ; preds = %53
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load float, float* %70, align 8
  %72 = fsub float 1.000000e+00, %71
  br label %73

73:                                               ; preds = %68, %59
  %74 = phi float [ %67, %59 ], [ %72, %68 ]
  store float %74, float* %18, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sitofp i32 %75 to float
  %77 = fdiv float %76, 6.000000e+00
  store float %77, float* %19, align 4
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %20, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %80 = load float*, float** %10, align 8
  %81 = call i32 @xyz_to_cube(%struct.TYPE_5__* %79, float* %80, float* %21, float* %22, i32* %26)
  %82 = load float, float* %17, align 4
  %83 = load float, float* %21, align 4
  %84 = fmul float %83, %82
  store float %84, float* %21, align 4
  %85 = load float, float* %18, align 4
  %86 = load float, float* %22, align 4
  %87 = fmul float %86, %85
  store float %87, float* %22, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %26, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %27, align 4
  %95 = load float, float* %19, align 4
  %96 = load i32, i32* %27, align 4
  %97 = add nsw i32 %96, 1
  %98 = sitofp i32 %97 to float
  %99 = fmul float %95, %98
  %100 = call i32 @ceilf(float %99)
  %101 = load float, float* %19, align 4
  %102 = load i32, i32* %27, align 4
  %103 = sitofp i32 %102 to float
  %104 = fmul float %101, %103
  %105 = call i32 @ceilf(float %104)
  %106 = sub nsw i32 %100, %105
  store i32 %106, i32* %25, align 4
  %107 = load i32, i32* %25, align 4
  %108 = sitofp i32 %107 to float
  %109 = fmul float 5.000000e-01, %108
  %110 = load float, float* %21, align 4
  %111 = fadd float %110, 1.000000e+00
  %112 = fmul float %109, %111
  %113 = fsub float %112, 5.000000e-01
  store float %113, float* %21, align 4
  %114 = load i32, i32* %20, align 4
  %115 = sitofp i32 %114 to float
  %116 = fmul float 5.000000e-01, %115
  %117 = load float, float* %22, align 4
  %118 = fadd float %117, 1.000000e+00
  %119 = fmul float %116, %118
  %120 = fsub float %119, 5.000000e-01
  store float %120, float* %22, align 4
  %121 = load float, float* %21, align 4
  %122 = call i32 @floorf(float %121)
  store i32 %122, i32* %23, align 4
  %123 = load float, float* %22, align 4
  %124 = call i32 @floorf(float %123)
  store i32 %124, i32* %24, align 4
  %125 = load float, float* %21, align 4
  %126 = load i32, i32* %23, align 4
  %127 = sitofp i32 %126 to float
  %128 = fsub float %125, %127
  %129 = load float*, float** %15, align 8
  store float %128, float* %129, align 4
  %130 = load float, float* %22, align 4
  %131 = load i32, i32* %24, align 4
  %132 = sitofp i32 %131 to float
  %133 = fsub float %130, %132
  %134 = load float*, float** %16, align 8
  store float %133, float* %134, align 4
  store i32 -1, i32* %28, align 4
  br label %135

135:                                              ; preds = %267, %73
  %136 = load i32, i32* %28, align 4
  %137 = icmp slt i32 %136, 3
  br i1 %137, label %138, label %270

138:                                              ; preds = %135
  store i32 -1, i32* %29, align 4
  br label %139

139:                                              ; preds = %263, %138
  %140 = load i32, i32* %29, align 4
  %141 = icmp slt i32 %140, 3
  br i1 %141, label %142, label %266

142:                                              ; preds = %139
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %29, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %30, align 4
  %146 = load i32, i32* %24, align 4
  %147 = load i32, i32* %28, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %31, align 4
  %149 = load i32, i32* %30, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %142
  %152 = load i32, i32* %30, align 4
  %153 = load i32, i32* %25, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %151
  %156 = load i32, i32* %31, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load i32, i32* %31, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %26, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %27, align 4
  %170 = load float, float* %19, align 4
  %171 = load i32, i32* %27, align 4
  %172 = sitofp i32 %171 to float
  %173 = fmul float %170, %172
  %174 = call i32 @ceilf(float %173)
  store i32 %174, i32* %32, align 4
  br label %240

175:                                              ; preds = %158, %155, %151, %142
  %176 = load i32, i32* %30, align 4
  %177 = sitofp i32 %176 to float
  %178 = fmul float 2.000000e+00, %177
  %179 = load i32, i32* %25, align 4
  %180 = sitofp i32 %179 to float
  %181 = fdiv float %178, %180
  %182 = fsub float %181, 1.000000e+00
  store float %182, float* %21, align 4
  %183 = load i32, i32* %31, align 4
  %184 = sitofp i32 %183 to float
  %185 = fmul float 2.000000e+00, %184
  %186 = load i32, i32* %20, align 4
  %187 = sitofp i32 %186 to float
  %188 = fdiv float %185, %187
  %189 = fsub float %188, 1.000000e+00
  store float %189, float* %22, align 4
  %190 = load float, float* %17, align 4
  %191 = load float, float* %21, align 4
  %192 = fdiv float %191, %190
  store float %192, float* %21, align 4
  %193 = load float, float* %18, align 4
  %194 = load float, float* %22, align 4
  %195 = fdiv float %194, %193
  store float %195, float* %22, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %197 = load float, float* %21, align 4
  %198 = load float, float* %22, align 4
  %199 = load i32, i32* %26, align 4
  %200 = call i32 @process_cube_coordinates(%struct.TYPE_5__* %196, float %197, float %198, i32 %199, float* %21, float* %22, i32* %27)
  %201 = load float, float* %17, align 4
  %202 = load float, float* %21, align 4
  %203 = fmul float %202, %201
  store float %203, float* %21, align 4
  %204 = load float, float* %18, align 4
  %205 = load float, float* %22, align 4
  %206 = fmul float %205, %204
  store float %206, float* %22, align 4
  %207 = load float, float* %19, align 4
  %208 = load i32, i32* %27, align 4
  %209 = sitofp i32 %208 to float
  %210 = fmul float %207, %209
  %211 = call i32 @ceilf(float %210)
  store i32 %211, i32* %32, align 4
  %212 = load float, float* %19, align 4
  %213 = load i32, i32* %27, align 4
  %214 = add nsw i32 %213, 1
  %215 = sitofp i32 %214 to float
  %216 = fmul float %212, %215
  %217 = call i32 @ceilf(float %216)
  %218 = load i32, i32* %32, align 4
  %219 = sub nsw i32 %217, %218
  store i32 %219, i32* %33, align 4
  %220 = load i32, i32* %33, align 4
  %221 = sitofp i32 %220 to float
  %222 = fmul float 5.000000e-01, %221
  %223 = load float, float* %21, align 4
  %224 = fadd float %223, 1.000000e+00
  %225 = fmul float %222, %224
  %226 = call i32 @roundf(float %225)
  %227 = load i32, i32* %33, align 4
  %228 = sub nsw i32 %227, 1
  %229 = call i32 @av_clip(i32 %226, i32 0, i32 %228)
  store i32 %229, i32* %30, align 4
  %230 = load i32, i32* %20, align 4
  %231 = sitofp i32 %230 to float
  %232 = fmul float 5.000000e-01, %231
  %233 = load float, float* %22, align 4
  %234 = fadd float %233, 1.000000e+00
  %235 = fmul float %232, %234
  %236 = call i32 @roundf(float %235)
  %237 = load i32, i32* %20, align 4
  %238 = sub nsw i32 %237, 1
  %239 = call i32 @av_clip(i32 %236, i32 0, i32 %238)
  store i32 %239, i32* %31, align 4
  br label %240

240:                                              ; preds = %175, %162
  %241 = load i32, i32* %32, align 4
  %242 = load i32, i32* %30, align 4
  %243 = add nsw i32 %241, %242
  %244 = load [4 x i32]*, [4 x i32]** %13, align 8
  %245 = load i32, i32* %28, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %244, i64 %247
  %249 = load i32, i32* %29, align 4
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %248, i64 0, i64 %251
  store i32 %243, i32* %252, align 4
  %253 = load i32, i32* %31, align 4
  %254 = load [4 x i32]*, [4 x i32]** %14, align 8
  %255 = load i32, i32* %28, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %254, i64 %257
  %259 = load i32, i32* %29, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %258, i64 0, i64 %261
  store i32 %253, i32* %262, align 4
  br label %263

263:                                              ; preds = %240
  %264 = load i32, i32* %29, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %29, align 4
  br label %139

266:                                              ; preds = %139
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %28, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %28, align 4
  br label %135

270:                                              ; preds = %135
  ret void
}

declare dso_local i32 @xyz_to_cube(%struct.TYPE_5__*, float*, float*, float*, i32*) #1

declare dso_local i32 @ceilf(float) #1

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @process_cube_coordinates(%struct.TYPE_5__*, float, float, i32, float*, float*, i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @roundf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
