; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_parse_mantissas.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_parse_mantissas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, float*, i32*, i32*, i64*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@mantissa_size1 = common dso_local global i32** null, align 8
@exponent_tab = common dso_local global float* null, align 8
@mantissa_tab1 = common dso_local global float** null, align 8
@mantissa_size2 = common dso_local global i32** null, align 8
@mantissa_tab2 = common dso_local global float** null, align 8
@mantissa_tab3 = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @parse_mantissas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mantissas(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca [100 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %6, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  br label %25

25:                                               ; preds = %302, %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %307

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %34, i64 %38
  store float* %39, float** %9, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %261, %31
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %264

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32**, i32*** @mantissa_size1, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load float*, float** @exponent_tab, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %88, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds float, float* %85, i64 %96
  %98 = load float, float* %97, align 4
  store float %98, float* %14, align 4
  %99 = load float**, float*** @mantissa_tab1, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float*, float** %99, i64 %101
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = load float, float* %14, align 4
  %109 = fmul float %107, %108
  store float %109, float* %15, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %46
  %113 = load float*, float** %9, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memset(float* %113, i32 0, i32 %117)
  br label %256

119:                                              ; preds = %46
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %235

122:                                              ; preds = %119
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 1, %124
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %140, %122
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %12, align 4
  %135 = call float @get_sbits(i32* %133, i32 %134)
  %136 = fptosi float %135 to i32
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 %138
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %127

143:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %231, %143
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %234

148:                                              ; preds = %144
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %148
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sitofp i32 %159 to float
  %161 = load float, float* %15, align 4
  %162 = fmul float %160, %161
  %163 = load float*, float** %9, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  store float %162, float* %166, align 4
  br label %230

167:                                              ; preds = %148
  %168 = load i32**, i32*** @mantissa_size2, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %18, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %18, align 4
  %180 = call float @get_sbits(i32* %178, i32 %179)
  %181 = fptosi float %180 to i32
  store i32 %181, i32* %19, align 4
  %182 = load float**, float*** @mantissa_tab2, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float*, float** %182, i64 %184
  %186 = load float*, float** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %186, i64 %188
  %190 = load float, float* %189, align 4
  store float %190, float* %20, align 4
  %191 = load float**, float*** @mantissa_tab3, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float*, float** %191, i64 %193
  %195 = load float*, float** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  %199 = load float, float* %198, align 4
  store float %199, float* %21, align 4
  %200 = load i32, i32* %19, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %167
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %203, 1
  %205 = sitofp i32 %204 to float
  %206 = load float, float* %20, align 4
  %207 = fmul float %205, %206
  %208 = load float, float* %21, align 4
  %209 = fsub float %207, %208
  %210 = load float, float* %14, align 4
  %211 = fmul float %209, %210
  %212 = load float*, float** %9, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  store float %211, float* %215, align 4
  br label %229

216:                                              ; preds = %167
  %217 = load i32, i32* %19, align 4
  %218 = sitofp i32 %217 to float
  %219 = load float, float* %20, align 4
  %220 = fmul float %218, %219
  %221 = load float, float* %21, align 4
  %222 = fadd float %220, %221
  %223 = load float, float* %14, align 4
  %224 = fmul float %222, %223
  %225 = load float*, float** %9, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  store float %224, float* %228, align 4
  br label %229

229:                                              ; preds = %216, %202
  br label %230

230:                                              ; preds = %229, %155
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  br label %144

234:                                              ; preds = %144
  br label %255

235:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %236

236:                                              ; preds = %251, %235
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32, i32* %12, align 4
  %244 = call float @get_sbits(i32* %242, i32 %243)
  %245 = load float, float* %15, align 4
  %246 = fmul float %244, %245
  %247 = load float*, float** %9, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %247, i64 %249
  store float %246, float* %250, align 4
  br label %251

251:                                              ; preds = %240
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %236

254:                                              ; preds = %236
  br label %255

255:                                              ; preds = %254, %234
  br label %256

256:                                              ; preds = %255, %112
  %257 = load i32, i32* %13, align 4
  %258 = load float*, float** %9, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds float, float* %258, i64 %259
  store float* %260, float** %9, align 8
  br label %261

261:                                              ; preds = %256
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  br label %40

264:                                              ; preds = %40
  br label %265

265:                                              ; preds = %298, %264
  %266 = load i32, i32* %7, align 4
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %269, %272
  %274 = icmp slt i32 %266, %273
  br i1 %274, label %275, label %301

275:                                              ; preds = %265
  %276 = load float*, float** %9, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = mul i64 %284, 4
  %286 = trunc i64 %285 to i32
  %287 = call i32 @memset(float* %276, i32 0, i32 %286)
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load float*, float** %9, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds float, float* %295, i64 %296
  store float* %297, float** %9, align 8
  br label %298

298:                                              ; preds = %275
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %265

301:                                              ; preds = %265
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 1
  store %struct.TYPE_6__* %306, %struct.TYPE_6__** %5, align 8
  br label %25

307:                                              ; preds = %25
  ret i32 0
}

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local float @get_sbits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
