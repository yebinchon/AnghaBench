; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_guess_qnos.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_guess_qnos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i32*, i32*, i32*, i32* }

@ff_dv_quant_shifts = common dso_local global i64** null, align 8
@ff_dv_quant_offset = common dso_local global i32* null, align 8
@mb_area_start = common dso_local global i32* null, align 8
@vs_total_ac_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @dv_guess_qnos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dv_guess_qnos(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 16777216, i32* %13, align 16
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 16777216, i32* %14, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 16777216, i32* %15, align 8
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 16777216, i32* %16, align 4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 16777216, i32* %17, align 16
  br label %18

18:                                               ; preds = %428, %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %12, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %424, %18
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %23, label %427

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %424

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %39
  store i32 0, i32* %40, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %400, %31
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %405

44:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %396, %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %399

48:                                               ; preds = %45
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64**, i64*** @ff_dv_quant_shifts, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @ff_dv_quant_offset, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %61, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %56, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %55, %75
  br i1 %76, label %77, label %383

77:                                               ; preds = %48
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** @mb_area_start, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp sge i32 %105, %111
  br i1 %112, label %122, label %113

113:                                              ; preds = %77
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %113, %77
  %123 = phi i1 [ true, %77 ], [ %121, %113 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @av_assert2(i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %366, %122
  %134 = load i32, i32* %8, align 4
  %135 = load i32*, i32** @mb_area_start, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %134, %140
  br i1 %141, label %142, label %374

142:                                              ; preds = %133
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %142
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 %160, %161
  %163 = sub nsw i32 %162, 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @dv_rl2vlc_size(i32 %163, i32 %170)
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %171
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %10, align 4
  br label %365

183:                                              ; preds = %142
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** @mb_area_start, align 8
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp sge i32 %190, %196
  br i1 %197, label %198, label %351

198:                                              ; preds = %183
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %205, 64
  br i1 %206, label %207, label %351

207:                                              ; preds = %198
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %233, %207
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** @mb_area_start, align 8
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp sge i32 %217, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %210
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %226, i32* %232, align 4
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %11, align 4
  br label %210

236:                                              ; preds = %210
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %237, 4
  %239 = zext i1 %238 to i32
  %240 = call i32 @av_assert2(i32 %239)
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %243, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @av_assert2(i32 %253)
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %10, align 4
  %263 = sub nsw i32 %261, %262
  %264 = sub nsw i32 %263, 1
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 5
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 4
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %267, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @dv_rl2vlc_size(i32 %264, i32 %277)
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %8, align 4
  %287 = sub nsw i32 %285, %286
  %288 = sub nsw i32 %287, 1
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 5
  %291 = load i32*, i32** %290, align 8
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 4
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %291, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @dv_rl2vlc_size(i32 %288, i32 %301)
  %303 = sub nsw i64 %278, %302
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 2
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %303
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 4
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %340

323:                                              ; preds = %236
  %324 = load i32, i32* %11, align 4
  %325 = add nsw i32 %324, 1
  %326 = icmp sge i32 %325, 4
  br i1 %326, label %338, label %327

327:                                              ; preds = %323
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 3
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %8, align 4
  %337 = icmp ne i32 %335, %336
  br label %338

338:                                              ; preds = %327, %323
  %339 = phi i1 [ true, %323 ], [ %337, %327 ]
  br label %340

340:                                              ; preds = %338, %236
  %341 = phi i1 [ false, %236 ], [ %339, %338 ]
  %342 = zext i1 %341 to i32
  %343 = call i32 @av_assert2(i32 %342)
  %344 = load i32, i32* %10, align 4
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 3
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 %344, i32* %350, align 4
  br label %351

351:                                              ; preds = %340, %198, %183
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 4
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %10, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 %358, i32* %364, align 4
  br label %365

365:                                              ; preds = %351, %159
  br label %366

366:                                              ; preds = %365
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 4
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %8, align 4
  br label %133

374:                                              ; preds = %133
  %375 = load i32, i32* %10, align 4
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 3
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %9, align 4
  %380 = add nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %378, i64 %381
  store i32 %375, i32* %382, align 4
  br label %383

383:                                              ; preds = %374, %48
  %384 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 2
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %6, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, %390
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %383
  %397 = load i32, i32* %9, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %9, align 4
  br label %45

399:                                              ; preds = %45
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 1
  store %struct.TYPE_3__* %404, %struct.TYPE_3__** %12, align 8
  br label %41

405:                                              ; preds = %41
  %406 = load i32, i32* @vs_total_ac_bits, align 4
  %407 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %408 = load i32, i32* %407, align 16
  %409 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %408, %410
  %412 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %411, %413
  %415 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %414, %416
  %418 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %419 = load i32, i32* %418, align 16
  %420 = add nsw i32 %417, %419
  %421 = icmp sge i32 %406, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %405
  br label %556

423:                                              ; preds = %405
  br label %424

424:                                              ; preds = %423, %30
  %425 = load i32, i32* %6, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %6, align 4
  br label %20

427:                                              ; preds = %20
  br label %428

428:                                              ; preds = %427
  %429 = load i32*, i32** %4, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 0
  %431 = load i32, i32* %430, align 4
  %432 = load i32*, i32** %4, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = or i32 %431, %434
  %436 = load i32*, i32** %4, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 2
  %438 = load i32, i32* %437, align 4
  %439 = or i32 %435, %438
  %440 = load i32*, i32** %4, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 3
  %442 = load i32, i32* %441, align 4
  %443 = or i32 %439, %442
  %444 = load i32*, i32** %4, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 4
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %443, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %18, label %449

449:                                              ; preds = %428
  store i32 2, i32* %9, align 4
  br label %450

450:                                              ; preds = %552, %449
  %451 = load i32, i32* %9, align 4
  %452 = icmp eq i32 %451, 2
  br i1 %452, label %458, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* @vs_total_ac_bits, align 4
  %455 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %456 = load i32, i32* %455, align 16
  %457 = icmp slt i32 %454, %456
  br label %458

458:                                              ; preds = %453, %450
  %459 = phi i1 [ true, %450 ], [ %457, %453 ]
  br i1 %459, label %460, label %556

460:                                              ; preds = %458
  %461 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %461, %struct.TYPE_3__** %12, align 8
  %462 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 120, i32* %462, align 16
  store i32 0, i32* %7, align 4
  br label %463

463:                                              ; preds = %546, %460
  %464 = load i32, i32* %7, align 4
  %465 = icmp slt i32 %464, 30
  br i1 %465, label %466, label %551

466:                                              ; preds = %463
  %467 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 3
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 0
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %10, align 4
  %472 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %472, i32 0, i32 4
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %10, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  store i32 %478, i32* %8, align 4
  br label %479

479:                                              ; preds = %537, %466
  %480 = load i32, i32* %8, align 4
  %481 = icmp slt i32 %480, 64
  br i1 %481, label %482, label %545

482:                                              ; preds = %479
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 5
  %485 = load i32*, i32** %484, align 8
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %9, align 4
  %491 = icmp slt i32 %489, %490
  br i1 %491, label %492, label %517

492:                                              ; preds = %482
  %493 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 5
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %8, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* %9, align 4
  %501 = sub nsw i32 0, %500
  %502 = icmp sgt i32 %499, %501
  br i1 %502, label %503, label %517

503:                                              ; preds = %492
  %504 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %504, i32 0, i32 4
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* %8, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 4
  %513 = load i32*, i32** %512, align 8
  %514 = load i32, i32* %10, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %513, i64 %515
  store i32 %510, i32* %516, align 4
  br label %536

517:                                              ; preds = %492, %482
  %518 = load i32, i32* %8, align 4
  %519 = load i32, i32* %10, align 4
  %520 = sub nsw i32 %518, %519
  %521 = sub nsw i32 %520, 1
  %522 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %523 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %522, i32 0, i32 5
  %524 = load i32*, i32** %523, align 8
  %525 = load i32, i32* %8, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = call i64 @dv_rl2vlc_size(i32 %521, i32 %528)
  %530 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %531 = load i32, i32* %530, align 16
  %532 = sext i32 %531 to i64
  %533 = add nsw i64 %532, %529
  %534 = trunc i64 %533 to i32
  store i32 %534, i32* %530, align 16
  %535 = load i32, i32* %8, align 4
  store i32 %535, i32* %10, align 4
  br label %536

536:                                              ; preds = %517, %503
  br label %537

537:                                              ; preds = %536
  %538 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 4
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %8, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %543, align 4
  store i32 %544, i32* %8, align 4
  br label %479

545:                                              ; preds = %479
  br label %546

546:                                              ; preds = %545
  %547 = load i32, i32* %7, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %7, align 4
  %549 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %550 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %549, i32 1
  store %struct.TYPE_3__* %550, %struct.TYPE_3__** %12, align 8
  br label %463

551:                                              ; preds = %463
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %9, align 4
  %554 = load i32, i32* %9, align 4
  %555 = add nsw i32 %554, %553
  store i32 %555, i32* %9, align 4
  br label %450

556:                                              ; preds = %422, %458
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i64 @dv_rl2vlc_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
