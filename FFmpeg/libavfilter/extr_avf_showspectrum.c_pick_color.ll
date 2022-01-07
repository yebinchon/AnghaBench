; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_pick_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_pick_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float }
%struct.TYPE_5__ = type { i32 }

@CHANNEL = common dso_local global i32 0, align 4
@color_table = common dso_local global %struct.TYPE_6__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float, float, float, float, float*)* @pick_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pick_color(%struct.TYPE_5__* %0, float %1, float %2, float %3, float %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float* %5, float** %12, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CHANNEL, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %277

26:                                               ; preds = %6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  store i32 1, i32* %17, align 4
  br label %30

30:                                               ; preds = %55, %26
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_6__* %36)
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %31, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 4
  %51 = load float, float* %11, align 4
  %52 = fcmp oge float %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %58

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %30

58:                                               ; preds = %53, %30
  %59 = load float, float* %11, align 4
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  %71 = fcmp ole float %59, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %58
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load float, float* %82, align 4
  store float %83, float* %14, align 4
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load float, float* %93, align 4
  store float %94, float* %15, align 4
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load float, float* %104, align 4
  store float %105, float* %16, align 4
  br label %261

106:                                              ; preds = %58
  %107 = load float, float* %11, align 4
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i64 %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = fcmp oge float %107, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %106
  %120 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %120, i64 %122
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load float, float* %128, align 4
  store float %129, float* %14, align 4
  %130 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %130, i64 %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load float, float* %138, align 4
  store float %139, float* %15, align 4
  %140 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %140, i64 %142
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = load float, float* %148, align 4
  store float %149, float* %16, align 4
  br label %260

150:                                              ; preds = %106
  %151 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %151, i64 %153
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load float, float* %160, align 4
  store float %161, float* %18, align 4
  %162 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %162, i64 %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load float, float* %170, align 4
  store float %171, float* %19, align 4
  %172 = load float, float* %11, align 4
  %173 = load float, float* %18, align 4
  %174 = fsub float %172, %173
  %175 = load float, float* %19, align 4
  %176 = load float, float* %18, align 4
  %177 = fsub float %175, %176
  %178 = fdiv float %174, %177
  store float %178, float* %20, align 4
  %179 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %179, i64 %181
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load float, float* %188, align 4
  %190 = load float, float* %20, align 4
  %191 = fsub float 1.000000e+00, %190
  %192 = fmul float %189, %191
  %193 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %193, i64 %195
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load float, float* %201, align 4
  %203 = load float, float* %20, align 4
  %204 = fmul float %202, %203
  %205 = fadd float %192, %204
  store float %205, float* %14, align 4
  %206 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %206, i64 %208
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load float, float* %215, align 4
  %217 = load float, float* %20, align 4
  %218 = fsub float 1.000000e+00, %217
  %219 = fmul float %216, %218
  %220 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %220, i64 %222
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load float, float* %228, align 4
  %230 = load float, float* %20, align 4
  %231 = fmul float %229, %230
  %232 = fadd float %219, %231
  store float %232, float* %15, align 4
  %233 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %233, i64 %235
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = load i32, i32* %17, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 3
  %243 = load float, float* %242, align 4
  %244 = load float, float* %20, align 4
  %245 = fsub float 1.000000e+00, %244
  %246 = fmul float %243, %245
  %247 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @color_table, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %247, i64 %249
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 3
  %256 = load float, float* %255, align 4
  %257 = load float, float* %20, align 4
  %258 = fmul float %256, %257
  %259 = fadd float %246, %258
  store float %259, float* %16, align 4
  br label %260

260:                                              ; preds = %150, %119
  br label %261

261:                                              ; preds = %260, %72
  %262 = load float, float* %14, align 4
  %263 = load float, float* %8, align 4
  %264 = fmul float %262, %263
  %265 = load float*, float** %12, align 8
  %266 = getelementptr inbounds float, float* %265, i64 0
  store float %264, float* %266, align 4
  %267 = load float, float* %15, align 4
  %268 = load float, float* %9, align 4
  %269 = fmul float %267, %268
  %270 = load float*, float** %12, align 8
  %271 = getelementptr inbounds float, float* %270, i64 1
  store float %269, float* %271, align 4
  %272 = load float, float* %16, align 4
  %273 = load float, float* %10, align 4
  %274 = fmul float %272, %273
  %275 = load float*, float** %12, align 8
  %276 = getelementptr inbounds float, float* %275, i64 2
  store float %274, float* %276, align 4
  br label %293

277:                                              ; preds = %6
  %278 = load float, float* %11, align 4
  %279 = load float, float* %8, align 4
  %280 = fmul float %278, %279
  %281 = load float*, float** %12, align 8
  %282 = getelementptr inbounds float, float* %281, i64 0
  store float %280, float* %282, align 4
  %283 = load float, float* %11, align 4
  %284 = load float, float* %9, align 4
  %285 = fmul float %283, %284
  %286 = load float*, float** %12, align 8
  %287 = getelementptr inbounds float, float* %286, i64 1
  store float %285, float* %287, align 4
  %288 = load float, float* %11, align 4
  %289 = load float, float* %10, align 4
  %290 = fmul float %288, %289
  %291 = load float*, float** %12, align 8
  %292 = getelementptr inbounds float, float* %291, i64 2
  store float %290, float* %292, align 4
  br label %293

293:                                              ; preds = %277, %261
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
