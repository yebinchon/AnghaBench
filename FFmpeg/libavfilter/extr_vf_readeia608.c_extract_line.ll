; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_readeia608.c_extract_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_readeia608.c_extract_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32**, i32*, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@RISE = common dso_local global i32 0, align 4
@FALL = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"peaks: %d != 7\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mhd: %d > %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"mpd: %d > %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"msd: %d > %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"lavfi.readeia608.%d.cc\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0x%02X%02X\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"lavfi.readeia608.%d.line\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @extract_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_line(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [8 x [2 x i32]], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca [128 x i32], align 16
  %39 = alloca [128 x i32], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %10, align 4
  %43 = load i32, i32* @INT_MAX, align 4
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %44 = bitcast [8 x [2 x i32]]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 64, i1 false)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %52 = load i32, i32* @RISE, align 4
  store i32 %52, i32* %21, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sdiv i32 %57, 19
  store i32 %58, i32* %22, align 4
  %59 = bitcast [2 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %59, i8 0, i64 8, i1 false)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %64, i64 %72
  store i32* %73, i32** %15, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %168

78:                                               ; preds = %4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %28, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %29, align 4
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %161, %78
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %164

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 3
  %95 = call i32 @FFMAX(i32 %94, i32 0)
  store i32 %95, i32* %30, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %96, 2
  %98 = call i32 @FFMAX(i32 %97, i32 0)
  store i32 %98, i32* %31, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @FFMAX(i32 %100, i32 0)
  store i32 %101, i32* %32, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 3
  %104 = load i32, i32* %29, align 4
  %105 = call i32 @FFMIN(i32 %103, i32 %104)
  store i32 %105, i32* %33, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 2
  %108 = load i32, i32* %29, align 4
  %109 = call i32 @FFMIN(i32 %107, i32 %108)
  store i32 %109, i32* %34, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* %29, align 4
  %113 = call i32 @FFMIN(i32 %111, i32 %112)
  store i32 %113, i32* %35, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %30, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %31, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %118, %123
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %32, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %124, %129
  %131 = load i32*, i32** %15, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %130, %135
  %137 = load i32*, i32** %15, align 8
  %138 = load i32, i32* %33, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %136, %141
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %34, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %142, %147
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %35, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %148, %153
  %155 = add nsw i32 %154, 6
  %156 = sdiv i32 %155, 7
  %157 = load i32*, i32** %28, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %92
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %86

164:                                              ; preds = %86
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %15, align 8
  br label %168

168:                                              ; preds = %164, %4
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %188, %168
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %169
  %174 = load i32, i32* %10, align 4
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @FFMAX(i32 %174, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @FFMIN(i32 %181, i32 %186)
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %173
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %169

191:                                              ; preds = %169
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %544

201:                                              ; preds = %191
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %265, %201
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %17, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %268

206:                                              ; preds = %202
  %207 = load i32*, i32** %15, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %36, align 4
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* @RISE, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %245

215:                                              ; preds = %206
  %216 = load i32, i32* %36, align 4
  %217 = load i32, i32* %18, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %244

219:                                              ; preds = %215
  %220 = load i32, i32* @FALL, align 4
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = icmp sge i32 %221, %224
  br i1 %225, label %226, label %243

226:                                              ; preds = %219
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %229
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %230, i64 0, i64 0
  store i32 %227, i32* %231, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %234
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %235, i64 0, i64 1
  store i32 %232, i32* %236, align 4
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* %19, align 4
  %240 = icmp sgt i32 %239, 7
  br i1 %240, label %241, label %242

241:                                              ; preds = %226
  br label %268

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %242, %219
  br label %244

244:                                              ; preds = %243, %215
  br label %263

245:                                              ; preds = %206
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* @FALL, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %245
  %250 = load i32, i32* %36, align 4
  %251 = load i32, i32* %18, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  %254 = load i32, i32* %18, align 4
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = icmp sle i32 %254, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = load i32, i32* @RISE, align 4
  store i32 %260, i32* %21, align 4
  br label %261

261:                                              ; preds = %259, %253, %249
  br label %262

262:                                              ; preds = %261, %245
  br label %263

263:                                              ; preds = %262, %244
  %264 = load i32, i32* %36, align 4
  store i32 %264, i32* %18, align 4
  br label %265

265:                                              ; preds = %263
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %12, align 4
  br label %202

268:                                              ; preds = %241, %202
  %269 = load i32, i32* %19, align 4
  %270 = icmp ne i32 %269, 7
  br i1 %270, label %271, label %276

271:                                              ; preds = %268
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %273 = load i32, i32* @AV_LOG_DEBUG, align 4
  %274 = load i32, i32* %19, align 4
  %275 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %272, i32 %273, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %274)
  br label %544

276:                                              ; preds = %268
  store i32 1, i32* %12, align 4
  br label %277

277:                                              ; preds = %296, %276
  %278 = load i32, i32* %12, align 4
  %279 = icmp slt i32 %278, 7
  br i1 %279, label %280, label %299

280:                                              ; preds = %277
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %283
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %284, i64 0, i64 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %289
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %290, i64 0, i64 0
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %286, %292
  %294 = call i32 @FFABS(i32 %293)
  %295 = call i32 @FFMAX(i32 %281, i32 %294)
  store i32 %295, i32* %20, align 4
  br label %296

296:                                              ; preds = %280
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %12, align 4
  br label %277

299:                                              ; preds = %277
  %300 = load i32, i32* %20, align 4
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = icmp sgt i32 %300, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %299
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %307 = load i32, i32* @AV_LOG_DEBUG, align 4
  %308 = load i32, i32* %20, align 4
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %306, i32 %307, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %308, i32 %311)
  br label %544

313:                                              ; preds = %299
  store i32 0, i32* %10, align 4
  %314 = load i32, i32* @INT_MAX, align 4
  store i32 %314, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %315

315:                                              ; preds = %349, %313
  %316 = load i32, i32* %12, align 4
  %317 = icmp slt i32 %316, 7
  br i1 %317, label %318, label %352

318:                                              ; preds = %315
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %321
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %322, i64 0, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %12, align 4
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %327
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %328, i64 0, i64 1
  %330 = load i32, i32* %329, align 4
  %331 = sub nsw i32 %324, %330
  %332 = call i32 @FFABS(i32 %331)
  %333 = call i32 @FFMAX(i32 %319, i32 %332)
  store i32 %333, i32* %10, align 4
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %12, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %336
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %337, i64 0, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %12, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %16, i64 0, i64 %342
  %344 = getelementptr inbounds [2 x i32], [2 x i32]* %343, i64 0, i64 1
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %339, %345
  %347 = call i32 @FFABS(i32 %346)
  %348 = call i32 @FFMIN(i32 %334, i32 %347)
  store i32 %348, i32* %11, align 4
  br label %349

349:                                              ; preds = %318
  %350 = load i32, i32* %12, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %12, align 4
  br label %315

352:                                              ; preds = %315
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %11, align 4
  %355 = sub nsw i32 %353, %354
  store i32 %355, i32* %14, align 4
  %356 = load i32, i32* %14, align 4
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = icmp sgt i32 %356, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %352
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %363 = load i32, i32* @AV_LOG_DEBUG, align 4
  %364 = load i32, i32* %14, align 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %362, i32 %363, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %364, i32 %367)
  br label %544

369:                                              ; preds = %352
  %370 = load i32*, i32** %15, align 8
  %371 = load i32, i32* %17, align 4
  %372 = load i32, i32* %22, align 4
  %373 = mul nsw i32 %372, 0
  %374 = add nsw i32 %371, %373
  %375 = load i32, i32* %22, align 4
  %376 = sdiv i32 %375, 2
  %377 = add nsw i32 %374, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %370, i64 %378
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %24, align 4
  %381 = load i32*, i32** %15, align 8
  %382 = load i32, i32* %17, align 4
  %383 = load i32, i32* %22, align 4
  %384 = mul nsw i32 %383, 1
  %385 = add nsw i32 %382, %384
  %386 = load i32, i32* %22, align 4
  %387 = sdiv i32 %386, 2
  %388 = add nsw i32 %385, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %381, i64 %389
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %25, align 4
  %392 = load i32*, i32** %15, align 8
  %393 = load i32, i32* %17, align 4
  %394 = load i32, i32* %22, align 4
  %395 = mul nsw i32 %394, 2
  %396 = add nsw i32 %393, %395
  %397 = load i32, i32* %22, align 4
  %398 = sdiv i32 %397, 2
  %399 = add nsw i32 %396, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %392, i64 %400
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %26, align 4
  %403 = load i32, i32* %24, align 4
  %404 = load i32, i32* %25, align 4
  %405 = sub nsw i32 %403, %404
  %406 = call i32 @FFABS(i32 %405)
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = icmp sgt i32 %406, %409
  br i1 %410, label %429, label %411

411:                                              ; preds = %369
  %412 = load i32, i32* %24, align 4
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = icmp sgt i32 %412, %415
  br i1 %416, label %429, label %417

417:                                              ; preds = %411
  %418 = load i32, i32* %25, align 4
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = icmp sgt i32 %418, %421
  br i1 %422, label %429, label %423

423:                                              ; preds = %417
  %424 = load i32, i32* %26, align 4
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = icmp slt i32 %424, %427
  br i1 %428, label %429, label %440

429:                                              ; preds = %423, %417, %411, %369
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %431 = load i32, i32* @AV_LOG_DEBUG, align 4
  %432 = load i32, i32* %24, align 4
  %433 = load i32, i32* %25, align 4
  %434 = sub nsw i32 %432, %433
  %435 = call i32 @FFABS(i32 %434)
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 7
  %438 = load i32, i32* %437, align 4
  %439 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %430, i32 %431, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %435, i32 %438)
  br label %544

440:                                              ; preds = %423
  store i32 0, i32* %13, align 4
  br label %441

441:                                              ; preds = %507, %440
  %442 = load i32, i32* %13, align 4
  %443 = icmp slt i32 %442, 2
  br i1 %443, label %444, label %510

444:                                              ; preds = %441
  store i32 0, i32* %27, align 4
  store i32 0, i32* %12, align 4
  br label %445

445:                                              ; preds = %489, %444
  %446 = load i32, i32* %12, align 4
  %447 = icmp slt i32 %446, 8
  br i1 %447, label %448, label %492

448:                                              ; preds = %445
  %449 = load i32*, i32** %15, align 8
  %450 = load i32, i32* %17, align 4
  %451 = load i32, i32* %22, align 4
  %452 = load i32, i32* %12, align 4
  %453 = add nsw i32 %452, 3
  %454 = load i32, i32* %13, align 4
  %455 = mul nsw i32 8, %454
  %456 = add nsw i32 %453, %455
  %457 = mul nsw i32 %451, %456
  %458 = add nsw i32 %450, %457
  %459 = load i32, i32* %22, align 4
  %460 = sdiv i32 %459, 2
  %461 = add nsw i32 %458, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %449, i64 %462
  %464 = load i32, i32* %463, align 4
  store i32 %464, i32* %37, align 4
  %465 = load i32, i32* %37, align 4
  %466 = load i32, i32* %24, align 4
  %467 = sub nsw i32 %465, %466
  %468 = load i32, i32* %26, align 4
  %469 = load i32, i32* %24, align 4
  %470 = sub nsw i32 %468, %469
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 8
  %473 = load i32, i32* %472, align 8
  %474 = mul nsw i32 %470, %473
  %475 = icmp sgt i32 %467, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %448
  store i32 1, i32* %37, align 4
  %477 = load i32, i32* %27, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %27, align 4
  br label %480

479:                                              ; preds = %448
  store i32 0, i32* %37, align 4
  br label %480

480:                                              ; preds = %479, %476
  %481 = load i32, i32* %37, align 4
  %482 = load i32, i32* %12, align 4
  %483 = shl i32 %481, %482
  %484 = load i32, i32* %13, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = or i32 %487, %483
  store i32 %488, i32* %486, align 4
  br label %489

489:                                              ; preds = %480
  %490 = load i32, i32* %12, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %12, align 4
  br label %445

492:                                              ; preds = %445
  %493 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 10
  %495 = load i64, i64* %494, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %506

497:                                              ; preds = %492
  %498 = load i32, i32* %27, align 4
  %499 = and i32 %498, 1
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %505, label %501

501:                                              ; preds = %497
  %502 = load i32, i32* %13, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %503
  store i32 0, i32* %504, align 4
  br label %505

505:                                              ; preds = %501, %497
  br label %506

506:                                              ; preds = %505, %492
  br label %507

507:                                              ; preds = %506
  %508 = load i32, i32* %13, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %13, align 4
  br label %441

510:                                              ; preds = %441
  %511 = getelementptr inbounds [128 x i32], [128 x i32]* %38, i64 0, i64 0
  %512 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %513 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i32 0, i32 9
  %514 = load i32, i32* %513, align 4
  %515 = call i32 (i32*, i32, i8*, i32, ...) @snprintf(i32* %511, i32 512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %514)
  %516 = getelementptr inbounds [128 x i32], [128 x i32]* %39, i64 0, i64 0
  %517 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %518 = load i32, i32* %517, align 4
  %519 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %520 = load i32, i32* %519, align 4
  %521 = call i32 (i32*, i32, i8*, i32, ...) @snprintf(i32* %516, i32 512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %518, i32 %520)
  %522 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 3
  %524 = getelementptr inbounds [128 x i32], [128 x i32]* %38, i64 0, i64 0
  %525 = getelementptr inbounds [128 x i32], [128 x i32]* %39, i64 0, i64 0
  %526 = call i32 @av_dict_set(i32* %523, i32* %524, i32* %525, i32 0)
  %527 = getelementptr inbounds [128 x i32], [128 x i32]* %38, i64 0, i64 0
  %528 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 9
  %530 = load i32, i32* %529, align 4
  %531 = call i32 (i32*, i32, i8*, i32, ...) @snprintf(i32* %527, i32 512, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %530)
  %532 = getelementptr inbounds [128 x i32], [128 x i32]* %39, i64 0, i64 0
  %533 = load i32, i32* %8, align 4
  %534 = call i32 (i32*, i32, i8*, i32, ...) @snprintf(i32* %532, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %533)
  %535 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %535, i32 0, i32 3
  %537 = getelementptr inbounds [128 x i32], [128 x i32]* %38, i64 0, i64 0
  %538 = getelementptr inbounds [128 x i32], [128 x i32]* %39, i64 0, i64 0
  %539 = call i32 @av_dict_set(i32* %536, i32* %537, i32* %538, i32 0)
  %540 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %541 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %540, i32 0, i32 9
  %542 = load i32, i32* %541, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %541, align 4
  br label %544

544:                                              ; preds = %510, %429, %361, %305, %271, %200
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32, ...) #2

declare dso_local i32 @FFABS(i32) #2

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, ...) #2

declare dso_local i32 @av_dict_set(i32*, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
