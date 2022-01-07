; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_debug.c_AAS_DrawPlaneCross.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_debug.c_AAS_DrawPlaneCross.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i32, i32*, i32*, i32)* }

@MAX_DEBUGLINES = common dso_local global i32 0, align 4
@debuglines = common dso_local global i32* null, align 8
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qtrue = common dso_local global i64 0, align 8
@debuglinevisible = common dso_local global i64* null, align 8
@numdebuglines = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_DrawPlaneCross(i32* %0, i32* %1, float %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = call i32 @VectorCopy(i32* %21, i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %18, align 8
  %26 = call i32 @VectorCopy(i32* %24, i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = call i32 @VectorCopy(i32* %27, i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = call i32 @VectorCopy(i32* %30, i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = srem i32 %33, 3
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = srem i32 %36, 3
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 2
  %40 = srem i32 %39, 3
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 6
  store i32 %46, i32* %44, align 4
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 6
  store i32 %52, i32* %50, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 6
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 6
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %19, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 6
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %19, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 6
  store i32 %76, i32* %74, align 4
  %77 = load i32*, i32** %20, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 6
  store i32 %82, i32* %80, align 4
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 6
  store i32 %88, i32* %86, align 4
  %89 = load float, float* %8, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %94, %99
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %105, %110
  %112 = add nsw i32 %100, %111
  %113 = sitofp i32 %112 to float
  %114 = fsub float %89, %113
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to float
  %121 = fdiv float %114, %120
  %122 = fptosi float %121 to i32
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  %127 = load float, float* %8, align 4
  %128 = load i32*, i32** %18, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %132, %137
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %143, %148
  %150 = add nsw i32 %138, %149
  %151 = sitofp i32 %150 to float
  %152 = fsub float %127, %151
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sitofp i32 %157 to float
  %159 = fdiv float %152, %158
  %160 = fptosi float %159 to i32
  %161 = load i32*, i32** %18, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  %165 = load float, float* %8, align 4
  %166 = load i32*, i32** %19, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %170, %175
  %177 = load i32*, i32** %19, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %181, %186
  %188 = add nsw i32 %176, %187
  %189 = sitofp i32 %188 to float
  %190 = fsub float %165, %189
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sitofp i32 %195 to float
  %197 = fdiv float %190, %196
  %198 = fptosi float %197 to i32
  %199 = load i32*, i32** %19, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  %203 = load float, float* %8, align 4
  %204 = load i32*, i32** %20, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %208, %213
  %215 = load i32*, i32** %20, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %219, %224
  %226 = add nsw i32 %214, %225
  %227 = sitofp i32 %226 to float
  %228 = fsub float %203, %227
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sitofp i32 %233 to float
  %235 = fdiv float %228, %234
  %236 = fptosi float %235 to i32
  %237 = load i32*, i32** %20, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %241

241:                                              ; preds = %304, %5
  %242 = load i32, i32* %14, align 4
  %243 = icmp slt i32 %242, 2
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* @MAX_DEBUGLINES, align 4
  %247 = icmp slt i32 %245, %246
  br label %248

248:                                              ; preds = %244, %241
  %249 = phi i1 [ false, %241 ], [ %247, %244 ]
  br i1 %249, label %250, label %307

250:                                              ; preds = %248
  %251 = load i32*, i32** @debuglines, align 8
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %280, label %257

257:                                              ; preds = %250
  %258 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %259 = call i32 (...) %258()
  %260 = load i32*, i32** @debuglines, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %259, i32* %263, align 4
  %264 = load i32*, i32** @debuglines, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %271
  store i32 %268, i32* %272, align 4
  %273 = load i64, i64* @qtrue, align 8
  %274 = load i64*, i64** @debuglinevisible, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  store i64 %273, i64* %277, align 8
  %278 = load i32, i32* @numdebuglines, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* @numdebuglines, align 4
  br label %303

280:                                              ; preds = %250
  %281 = load i64*, i64** @debuglinevisible, align 8
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %302, label %287

287:                                              ; preds = %280
  %288 = load i32*, i32** @debuglines, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %14, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %14, align 4
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %295
  store i32 %292, i32* %296, align 4
  %297 = load i64, i64* @qtrue, align 8
  %298 = load i64*, i64** @debuglinevisible, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  store i64 %297, i64* %301, align 8
  br label %302

302:                                              ; preds = %287, %280
  br label %303

303:                                              ; preds = %302, %257
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %15, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %15, align 4
  br label %241

307:                                              ; preds = %248
  %308 = load i32 (i32, i32*, i32*, i32)*, i32 (i32, i32*, i32*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 1), align 8
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %17, align 8
  %312 = load i32*, i32** %18, align 8
  %313 = load i32, i32* %10, align 4
  %314 = call i32 %308(i32 %310, i32* %311, i32* %312, i32 %313)
  %315 = load i32 (i32, i32*, i32*, i32)*, i32 (i32, i32*, i32*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 1), align 8
  %316 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %19, align 8
  %319 = load i32*, i32** %20, align 8
  %320 = load i32, i32* %10, align 4
  %321 = call i32 %315(i32 %317, i32* %318, i32* %319, i32 %320)
  ret void
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
