; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_generate_sample.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_generate_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32*, i64*, i32 }
%struct.Scsp = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@new_scsp = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@scsp_dsp = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SoundRam = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_sample(%struct.Scsp* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.Scsp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
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
  store %struct.Scsp* %0, %struct.Scsp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %207, %8
  %34 = load i32, i32* %17, align 4
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %210

36:                                               ; preds = %33
  %37 = load i32, i32* %17, align 4
  %38 = sub nsw i32 %37, 6
  %39 = and i32 %38, 31
  store i32 %39, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %40 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %41 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i64 %44
  %46 = call i32 @op1(%struct.TYPE_17__* %45)
  %47 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %48 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %51, 31
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i64 %53
  %55 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %56 = call i32 @op2(%struct.TYPE_17__* %54, %struct.Scsp* %55)
  %57 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %58 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sub nsw i32 %60, 2
  %62 = and i32 %61, 31
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i64 %63
  %65 = call i32 @op3(%struct.TYPE_17__* %64)
  %66 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %67 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sub nsw i32 %69, 3
  %71 = and i32 %70, 31
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i64 %72
  %74 = call i32 @op4(%struct.TYPE_17__* %73)
  %75 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %76 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sub nsw i32 %78, 4
  %80 = and i32 %79, 31
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i64 %81
  %83 = call i32 @op5(%struct.TYPE_17__* %82)
  %84 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %85 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sub nsw i32 %87, 5
  %89 = and i32 %88, 31
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i64 %90
  %92 = call i32 @op6(%struct.TYPE_17__* %91)
  %93 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %94 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %96, 6
  %98 = and i32 %97, 31
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %99
  %101 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %102 = call i32 @op7(%struct.TYPE_17__* %100, %struct.Scsp* %101)
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_scsp, i32 0, i32 0), align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %36
  %106 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %107 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %106, i32 0, i32 0
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @scsp_debug_instrument_check_is_muted(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  store i32 1, i32* %21, align 4
  br label %118

118:                                              ; preds = %117, %105
  br label %119

119:                                              ; preds = %118, %36
  %120 = load i32, i32* %21, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %206, label %122

122:                                              ; preds = %119
  %123 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %124 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %123, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = load i32, i32* %20, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @get_sdl_shift(i32 %131)
  store i32 %132, i32* %22, align 4
  %133 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %134 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %133, i32 0, i32 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = load i32, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %22, align 4
  %143 = ashr i32 %141, %142
  store i32 %143, i32* %23, align 4
  %144 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %145 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %144, i32 0, i32 0
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %154 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @get_sdl_shift(i32 %161)
  %163 = ashr i32 %152, %162
  store i32 %163, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %164 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %165 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %164, i32 0, i32 0
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @get_panning(i32 %172, i32* %25, i32* %26)
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* %25, align 4
  %178 = ashr i32 %176, %177
  %179 = ashr i32 %178, 2
  %180 = add nsw i32 %175, %179
  %181 = load i32*, i32** %12, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* %26, align 4
  %186 = ashr i32 %184, %185
  %187 = ashr i32 %186, 2
  %188 = add nsw i32 %183, %187
  %189 = load i32*, i32** %13, align 8
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %24, align 4
  %191 = shl i32 %190, 4
  %192 = sext i32 %191 to i64
  %193 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 4), align 8
  %194 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %195 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %194, i32 0, i32 0
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i64, i64* %193, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %192
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %122, %119
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  br label %33

210:                                              ; preds = %33
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 0), align 8
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 1), align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 2), align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 2), align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 %216, i32* %218, align 4
  store i32 0, i32* %18, align 4
  br label %219

219:                                              ; preds = %226, %210
  %220 = load i32, i32* %18, align 4
  %221 = icmp slt i32 %220, 128
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* @SoundRam, align 4
  %225 = call i32 @ScspDspExec(%struct.TYPE_16__* @scsp_dsp, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %18, align 4
  br label %219

229:                                              ; preds = %219
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 5), align 8
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 5), align 8
  store i32 0, i32* %18, align 4
  br label %232

232:                                              ; preds = %240, %229
  %233 = load i32, i32* %18, align 4
  %234 = icmp slt i32 %233, 16
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 4), align 8
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  store i64 0, i64* %239, align 8
  br label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %18, align 4
  br label %232

243:                                              ; preds = %232
  store i32 0, i32* %18, align 4
  br label %244

244:                                              ; preds = %311, %243
  %245 = load i32, i32* %18, align 4
  %246 = icmp slt i32 %245, 18
  br i1 %246, label %247, label %314

247:                                              ; preds = %244
  %248 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %249 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %248, i32 0, i32 0
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = load i32, i32* %18, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @get_sdl_shift(i32 %256)
  store i32 %257, i32* %27, align 4
  %258 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 3), align 8
  %259 = load i32, i32* %18, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %27, align 4
  %264 = ashr i32 %262, %263
  store i32 %264, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %265 = load i32, i32* %18, align 4
  %266 = icmp eq i32 %265, 16
  br i1 %266, label %267, label %273

267:                                              ; preds = %247
  %268 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 2), align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %27, align 4
  %272 = ashr i32 %270, %271
  store i32 %272, i32* %28, align 4
  br label %273

273:                                              ; preds = %267, %247
  %274 = load i32, i32* %18, align 4
  %275 = icmp eq i32 %274, 17
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scsp_dsp, i32 0, i32 2), align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %27, align 4
  %281 = ashr i32 %279, %280
  store i32 %281, i32* %28, align 4
  br label %282

282:                                              ; preds = %276, %273
  %283 = load %struct.Scsp*, %struct.Scsp** %9, align 8
  %284 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %283, i32 0, i32 0
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @get_panning(i32 %291, i32* %29, i32* %30)
  %293 = load i32, i32* %28, align 4
  %294 = load i32, i32* %29, align 4
  %295 = ashr i32 %293, %294
  %296 = ashr i32 %295, 2
  store i32 %296, i32* %31, align 4
  %297 = load i32, i32* %28, align 4
  %298 = load i32, i32* %30, align 4
  %299 = ashr i32 %297, %298
  %300 = ashr i32 %299, 2
  store i32 %300, i32* %32, align 4
  %301 = load i32*, i32** %12, align 8
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %31, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32*, i32** %12, align 8
  store i32 %304, i32* %305, align 4
  %306 = load i32*, i32** %13, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %32, align 4
  %309 = add nsw i32 %307, %308
  %310 = load i32*, i32** %13, align 8
  store i32 %309, i32* %310, align 4
  br label %311

311:                                              ; preds = %282
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %18, align 4
  br label %244

314:                                              ; preds = %244
  %315 = load i32, i32* %14, align 4
  %316 = sub nsw i32 15, %315
  store i32 %316, i32* %19, align 4
  %317 = load i32*, i32** %12, align 8
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %19, align 4
  %320 = ashr i32 %318, %319
  %321 = load i32*, i32** %12, align 8
  store i32 %320, i32* %321, align 4
  %322 = load i32*, i32** %13, align 8
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %19, align 4
  %325 = ashr i32 %323, %324
  %326 = load i32*, i32** %13, align 8
  store i32 %325, i32* %326, align 4
  ret void
}

declare dso_local i32 @op1(%struct.TYPE_17__*) #1

declare dso_local i32 @op2(%struct.TYPE_17__*, %struct.Scsp*) #1

declare dso_local i32 @op3(%struct.TYPE_17__*) #1

declare dso_local i32 @op4(%struct.TYPE_17__*) #1

declare dso_local i32 @op5(%struct.TYPE_17__*) #1

declare dso_local i32 @op6(%struct.TYPE_17__*) #1

declare dso_local i32 @op7(%struct.TYPE_17__*, %struct.Scsp*) #1

declare dso_local i64 @scsp_debug_instrument_check_is_muted(i32) #1

declare dso_local i32 @get_sdl_shift(i32) #1

declare dso_local i32 @get_panning(i32, i32*, i32*) #1

declare dso_local i32 @ScspDspExec(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
