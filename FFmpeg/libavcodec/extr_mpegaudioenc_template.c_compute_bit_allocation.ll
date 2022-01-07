; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_compute_bit_allocation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_compute_bit_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i32, i64**, i32*, i64 }

@MPA_MAX_CHANNELS = common dso_local global i32 0, align 4
@SBLIMIT = common dso_local global i32 0, align 4
@SB_NOTALLOCATED = common dso_local global i8 0, align 1
@INT_MIN = common dso_local global i32 0, align 4
@SB_NOMORE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [48 x i8] c"current=%d max=%d max_sb=%d max_ch=%d alloc=%d\0A\00", align 1
@nb_scale_factors = common dso_local global i32* null, align 8
@quant_snr = common dso_local global i16* null, align 8
@SB_ALLOCATED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i16*, i8*, i32*)* @compute_bit_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_bit_allocation(%struct.TYPE_3__* %0, i16* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i16* %1, i16** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %24 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* @SBLIMIT, align 4
  %27 = zext i32 %26 to i64
  %28 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* @SBLIMIT, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %33 = zext i32 %32 to i64
  %34 = load i32, i32* @SBLIMIT, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %18, align 8
  %37 = mul nuw i64 %33, %35
  %38 = alloca i16, i64 %37, align 16
  store i64 %33, i64* %19, align 8
  store i64 %35, i64* %20, align 8
  %39 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %40 = zext i32 %39 to i64
  %41 = load i32, i32* @SBLIMIT, align 4
  %42 = zext i32 %41 to i64
  %43 = mul nuw i64 %40, %42
  %44 = alloca i8, i64 %43, align 16
  store i64 %40, i64* %21, align 8
  store i64 %42, i64* %22, align 8
  %45 = bitcast i16* %38 to i16**
  %46 = load i16*, i16** %6, align 8
  %47 = bitcast i16* %46 to i16**
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 2
  %53 = load i32, i32* @SBLIMIT, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %52, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(i16** %45, i16** %47, i32 %56)
  %58 = bitcast i8* %44 to i8**
  %59 = load i8, i8* @SB_NOTALLOCATED, align 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SBLIMIT, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @memset(i8** %58, i8 zeroext %59, i32 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to i8**
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SBLIMIT, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call i32 @memset(i8** %67, i8 zeroext 0, i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %16, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 65536
  br i1 %89, label %90, label %99

90:                                               ; preds = %4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 65536
  store i32 %94, i32* %92, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 8
  store i32 %98, i32* %16, align 4
  br label %102

99:                                               ; preds = %4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %90
  store i32 32, i32* %15, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %23, align 8
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %129, %102
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %106
  %113 = load i8*, i8** %23, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %117, %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %17, align 4
  %125 = shl i32 1, %124
  %126 = load i8*, i8** %23, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %23, align 8
  br label %129

129:                                              ; preds = %112
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %106

132:                                              ; preds = %106
  br label %133

133:                                              ; preds = %393, %132
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  %134 = load i32, i32* @INT_MIN, align 4
  store i32 %134, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %190, %133
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %186, %141
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %189

148:                                              ; preds = %142
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, %35
  %152 = getelementptr inbounds i16, i16* %38, i64 %151
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16, i16* %152, i64 %154
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i32
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %185

160:                                              ; preds = %148
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %162, %42
  %164 = getelementptr inbounds i8, i8* %44, i64 %163
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* @SB_NOMORE, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %160
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = mul nsw i64 %175, %35
  %177 = getelementptr inbounds i16, i16* %38, i64 %176
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i16, i16* %177, i64 %179
  %181 = load i16, i16* %180, align 2
  %182 = sext i16 %181 to i32
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %173, %160, %148
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %142

189:                                              ; preds = %142
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %135

193:                                              ; preds = %135
  %194 = load i32, i32* %14, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %394

197:                                              ; preds = %193
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %204, %31
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = call i32 @ff_dlog(i32* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %198, i32 %199, i32 %200, i32 %201, i8 zeroext %210)
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 4
  %214 = load i8*, i8** %213, align 8
  store i8* %214, i8** %23, align 8
  store i32 0, i32* %9, align 4
  br label %215

215:                                              ; preds = %228, %197
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %14, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %215
  %220 = load i8*, i8** %23, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = shl i32 1, %223
  %225 = load i8*, i8** %23, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %23, align 8
  br label %228

228:                                              ; preds = %219
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %215

231:                                              ; preds = %215
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = mul nsw i64 %233, %42
  %235 = getelementptr inbounds i8, i8* %44, i64 %234
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = load i8, i8* @SB_NOTALLOCATED, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %272

244:                                              ; preds = %231
  %245 = load i32*, i32** @nb_scale_factors, align 8
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 6
  %248 = load i64**, i64*** %247, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64*, i64** %248, i64 %250
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds i32, i32* %245, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %258, 6
  %260 = add nsw i32 2, %259
  store i32 %260, i32* %17, align 4
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 7
  %263 = load i32*, i32** %262, align 8
  %264 = load i8*, i8** %23, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %17, align 4
  br label %307

272:                                              ; preds = %231
  %273 = load i8*, i8** %7, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = mul nsw i64 %275, %31
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  store i32 %282, i32* %11, align 4
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 7
  %285 = load i32*, i32** %284, align 8
  %286 = load i8*, i8** %23, align 8
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %286, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i64
  %293 = getelementptr inbounds i32, i32* %285, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 7
  %297 = load i32*, i32** %296, align 8
  %298 = load i8*, i8** %23, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i64
  %304 = getelementptr inbounds i32, i32* %297, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = sub nsw i32 %294, %305
  store i32 %306, i32* %17, align 4
  br label %307

307:                                              ; preds = %272, %244
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* %17, align 4
  %310 = add nsw i32 %308, %309
  %311 = load i32, i32* %16, align 4
  %312 = icmp sle i32 %310, %311
  br i1 %312, label %313, label %384

313:                                              ; preds = %307
  %314 = load i8*, i8** %7, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = mul nsw i64 %316, %31
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  %319 = load i32, i32* %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %318, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = add i8 %322, 1
  store i8 %323, i8* %321, align 1
  %324 = zext i8 %323 to i32
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %15, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %15, align 4
  %328 = load i16*, i16** %6, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = mul nsw i64 %330, %27
  %332 = getelementptr inbounds i16, i16* %328, i64 %331
  %333 = load i32, i32* %14, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i16, i16* %332, i64 %334
  %336 = load i16, i16* %335, align 2
  %337 = sext i16 %336 to i32
  %338 = load i16*, i16** @quant_snr, align 8
  %339 = load i8*, i8** %23, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i64
  %345 = getelementptr inbounds i16, i16* %338, i64 %344
  %346 = load i16, i16* %345, align 2
  %347 = sext i16 %346 to i32
  %348 = sub nsw i32 %337, %347
  %349 = trunc i32 %348 to i16
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = mul nsw i64 %351, %35
  %353 = getelementptr inbounds i16, i16* %38, i64 %352
  %354 = load i32, i32* %14, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i16, i16* %353, i64 %355
  store i16 %349, i16* %356, align 2
  %357 = load i32, i32* %11, align 4
  %358 = load i8*, i8** %23, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 0
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = shl i32 1, %361
  %363 = sub nsw i32 %362, 1
  %364 = icmp eq i32 %357, %363
  br i1 %364, label %365, label %374

365:                                              ; preds = %313
  %366 = load i8, i8* @SB_NOMORE, align 1
  %367 = load i32, i32* %13, align 4
  %368 = sext i32 %367 to i64
  %369 = mul nsw i64 %368, %42
  %370 = getelementptr inbounds i8, i8* %44, i64 %369
  %371 = load i32, i32* %14, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  store i8 %366, i8* %373, align 1
  br label %383

374:                                              ; preds = %313
  %375 = load i8, i8* @SB_ALLOCATED, align 1
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = mul nsw i64 %377, %42
  %379 = getelementptr inbounds i8, i8* %44, i64 %378
  %380 = load i32, i32* %14, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %379, i64 %381
  store i8 %375, i8* %382, align 1
  br label %383

383:                                              ; preds = %374, %365
  br label %393

384:                                              ; preds = %307
  %385 = load i8, i8* @SB_NOMORE, align 1
  %386 = load i32, i32* %13, align 4
  %387 = sext i32 %386 to i64
  %388 = mul nsw i64 %387, %42
  %389 = getelementptr inbounds i8, i8* %44, i64 %388
  %390 = load i32, i32* %14, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %389, i64 %391
  store i8 %385, i8* %392, align 1
  br label %393

393:                                              ; preds = %384, %383
  br label %133

394:                                              ; preds = %196
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* %15, align 4
  %397 = sub nsw i32 %395, %396
  %398 = load i32*, i32** %8, align 8
  store i32 %397, i32* %398, align 4
  %399 = load i32*, i32** %8, align 8
  %400 = load i32, i32* %399, align 4
  %401 = icmp sge i32 %400, 0
  %402 = zext i1 %401 to i32
  %403 = call i32 @av_assert0(i32 %402)
  %404 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %404)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i16**, i16**, i32) #2

declare dso_local i32 @memset(i8**, i8 zeroext, i32) #2

declare dso_local i32 @ff_dlog(i32*, i8*, i32, i32, i32, i32, i8 zeroext) #2

declare dso_local i32 @av_assert0(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
