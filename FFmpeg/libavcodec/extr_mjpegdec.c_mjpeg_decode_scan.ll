; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_mjpeg_decode_scan.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_mjpeg_decode_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i64*, i32*, i32***, i32, %struct.TYPE_19__*, i32*, %struct.TYPE_24__, i32, %struct.TYPE_21__, i32*, %struct.TYPE_20__, i32, i64, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32 (i32*, i32, i32)* }
%struct.TYPE_20__ = type { i32 (i32)* }
%struct.TYPE_22__ = type { i32** }
%struct.TYPE_25__ = type { i32** }

@MAX_COMPONENTS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mb_bitmask_size mismatches\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"overread %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"error y=%d x=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mb: %d %d processed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%d %d %d %d %d %d %d %d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, i32, i32, i32*, i32, %struct.TYPE_25__*)* @mjpeg_decode_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mjpeg_decode_scan(%struct.TYPE_23__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.TYPE_25__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_24__, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_25__* %6, %struct.TYPE_25__** %15, align 8
  %43 = load i32, i32* @MAX_COMPONENTS, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %23, align 8
  %46 = alloca i32*, i64 %44, align 16
  store i64 %44, i64* %24, align 8
  %47 = load i32, i32* @MAX_COMPONENTS, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32*, i64 %48, align 16
  store i64 %48, i64* %25, align 8
  %50 = load i32, i32* @MAX_COMPONENTS, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %26, align 8
  %53 = bitcast %struct.TYPE_24__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 4, i1 false)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 8
  %58 = zext i1 %57 to i32
  %59 = add nsw i32 1, %58
  store i32 %59, i32* %28, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %7
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = add nsw i32 %70, 7
  %72 = ashr i32 %71, 3
  %73 = icmp ne i32 %63, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 16
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %77, i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %628

81:                                               ; preds = %62
  %82 = load i32*, i32** %13, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = call i32 @init_get_bits(%struct.TYPE_24__* %27, i32* %82, i32 %89)
  br label %91

91:                                               ; preds = %81, %7
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 26
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 16
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 %98, i32* %19, i32* %20)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @AV_CEIL_RSHIFT(i32 %102, i32 %103)
  store i32 %104, i32* %21, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %20, align 4
  %109 = call i32 @AV_CEIL_RSHIFT(i32 %107, i32 %108)
  store i32 %109, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %168, %91
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %171

114:                                              ; preds = %110
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %30, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 27
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %30, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %30, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %46, i64 %132
  store i32* %130, i32** %133, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %135 = icmp ne %struct.TYPE_25__* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %114
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %30, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  br label %145

144:                                              ; preds = %114
  br label %145

145:                                              ; preds = %144, %136
  %146 = phi i32* [ %143, %136 ], [ null, %144 ]
  %147 = load i32, i32* %30, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %49, i64 %148
  store i32* %146, i32** %149, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %30, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %30, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %52, i64 %158
  store i32 %156, i32* %159, align 4
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %30, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %145
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %110

171:                                              ; preds = %110
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %624, %171
  %173 = load i32, i32* %18, align 4
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %627

178:                                              ; preds = %172
  store i32 0, i32* %17, align 4
  br label %179

179:                                              ; preds = %620, %178
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %623

185:                                              ; preds = %179
  %186 = load i32*, i32** %13, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = call i32 @get_bits1(%struct.TYPE_24__* %27)
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  br label %192

192:                                              ; preds = %188, %185
  %193 = phi i1 [ false, %185 ], [ %191, %188 ]
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %31, align 4
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 25
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %192
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 26
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 25
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 26
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %204, %199, %192
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 18
  %213 = call i32 @get_bits_left(%struct.TYPE_24__* %212)
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %210
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 16
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %217, align 8
  %219 = load i32, i32* @AV_LOG_ERROR, align 4
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 18
  %222 = call i32 @get_bits_left(%struct.TYPE_24__* %221)
  %223 = sub nsw i32 0, %222
  %224 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %218, i32 %219, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %225, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %628

226:                                              ; preds = %210
  store i32 0, i32* %16, align 4
  br label %227

227:                                              ; preds = %613, %226
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %616

231:                                              ; preds = %227
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 8
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %33, align 4
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %38, align 4
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 9
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %34, align 4
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 10
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %39, align 4
  br label %260

260:                                              ; preds = %609, %231
  %261 = load i32, i32* %39, align 4
  %262 = load i32, i32* %33, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %612

264:                                              ; preds = %260
  %265 = load i32, i32* %38, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %52, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %35, align 4
  %270 = load i32, i32* %18, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load i32, i32* %37, align 4
  %273 = add nsw i32 %271, %272
  %274 = mul nsw i32 %268, %273
  %275 = mul nsw i32 %274, 8
  %276 = load i32, i32* %34, align 4
  %277 = load i32, i32* %17, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* %36, align 4
  %280 = add nsw i32 %278, %279
  %281 = mul nsw i32 %280, 8
  %282 = load i32, i32* %28, align 4
  %283 = mul nsw i32 %281, %282
  %284 = add nsw i32 %275, %283
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 16
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = ashr i32 %284, %289
  store i32 %290, i32* %40, align 4
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 24
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %308

295:                                              ; preds = %264
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 15
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %295
  %301 = load i32, i32* %38, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %52, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = ashr i32 %304, 1
  %306 = load i32, i32* %40, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %40, align 4
  br label %308

308:                                              ; preds = %300, %295, %264
  %309 = load i32, i32* %34, align 4
  %310 = load i32, i32* %17, align 4
  %311 = mul nsw i32 %309, %310
  %312 = load i32, i32* %36, align 4
  %313 = add nsw i32 %311, %312
  %314 = mul nsw i32 8, %313
  %315 = load i32, i32* %38, align 4
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %320, label %317

317:                                              ; preds = %308
  %318 = load i32, i32* %38, align 4
  %319 = icmp eq i32 %318, 2
  br i1 %319, label %320, label %322

320:                                              ; preds = %317, %308
  %321 = load i32, i32* %21, align 4
  br label %326

322:                                              ; preds = %317
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  br label %326

326:                                              ; preds = %322, %320
  %327 = phi i32 [ %321, %320 ], [ %325, %322 ]
  %328 = icmp slt i32 %314, %327
  br i1 %328, label %329, label %358

329:                                              ; preds = %326
  %330 = load i32, i32* %35, align 4
  %331 = load i32, i32* %18, align 4
  %332 = mul nsw i32 %330, %331
  %333 = load i32, i32* %37, align 4
  %334 = add nsw i32 %332, %333
  %335 = mul nsw i32 8, %334
  %336 = load i32, i32* %38, align 4
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %341, label %338

338:                                              ; preds = %329
  %339 = load i32, i32* %38, align 4
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %341, label %343

341:                                              ; preds = %338, %329
  %342 = load i32, i32* %22, align 4
  br label %347

343:                                              ; preds = %338
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  br label %347

347:                                              ; preds = %343, %341
  %348 = phi i32 [ %342, %341 ], [ %346, %343 ]
  %349 = icmp slt i32 %335, %348
  br i1 %349, label %350, label %358

350:                                              ; preds = %347
  %351 = load i32, i32* %38, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32*, i32** %46, i64 %352
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %40, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32* %357, i32** %32, align 8
  br label %359

358:                                              ; preds = %347, %326
  store i32* null, i32** %32, align 8
  br label %359

359:                                              ; preds = %358, %350
  %360 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 23
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %475, label %364

364:                                              ; preds = %359
  %365 = load i32, i32* %31, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %391

367:                                              ; preds = %364
  %368 = load i32*, i32** %32, align 8
  %369 = icmp ne i32* %368, null
  br i1 %369, label %370, label %390

370:                                              ; preds = %367
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %372 = load i32*, i32** %32, align 8
  %373 = load i32, i32* %38, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32*, i32** %49, i64 %374
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %40, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %38, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %52, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 16
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @mjpeg_copy_block(%struct.TYPE_23__* %371, i32* %372, i32* %379, i32 %383, i32 %388)
  br label %390

390:                                              ; preds = %370, %367
  br label %474

391:                                              ; preds = %364
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 22
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 0
  %395 = load i32 (i32)*, i32 (i32)** %394, align 8
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 19
  %398 = load i32, i32* %397, align 4
  %399 = call i32 %395(i32 %398)
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %401 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 19
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* %16, align 4
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 17
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %16, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 21
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %16, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %419, i32 0, i32 11
  %421 = load i32**, i32*** %420, align 8
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 12
  %424 = load i64*, i64** %423, align 8
  %425 = load i32, i32* %16, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i64, i64* %424, i64 %426
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds i32*, i32** %421, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = call i64 @decode_block(%struct.TYPE_23__* %400, i32 %403, i32 %404, i32 %411, i32 %418, i32* %430)
  %432 = icmp slt i64 %431, 0
  br i1 %432, label %433, label %442

433:                                              ; preds = %391
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 16
  %436 = load %struct.TYPE_19__*, %struct.TYPE_19__** %435, align 8
  %437 = load i32, i32* @AV_LOG_ERROR, align 4
  %438 = load i32, i32* %18, align 4
  %439 = load i32, i32* %17, align 4
  %440 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %436, i32 %437, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %438, i32 %439)
  %441 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %441, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %628

442:                                              ; preds = %391
  %443 = load i32*, i32** %32, align 8
  %444 = icmp ne i32* %443, null
  br i1 %444, label %445, label %473

445:                                              ; preds = %442
  %446 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %446, i32 0, i32 20
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 0
  %449 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %448, align 8
  %450 = load i32*, i32** %32, align 8
  %451 = load i32, i32* %38, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %52, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 19
  %457 = load i32, i32* %456, align 4
  %458 = call i32 %449(i32* %450, i32 %454, i32 %457)
  %459 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = and i32 %461, 7
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %472

464:                                              ; preds = %445
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %466 = load i32*, i32** %32, align 8
  %467 = load i32, i32* %38, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %52, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @shift_output(%struct.TYPE_23__* %465, i32* %466, i32 %470)
  br label %472

472:                                              ; preds = %464, %445
  br label %473

473:                                              ; preds = %472, %442
  br label %474

474:                                              ; preds = %473, %390
  br label %570

475:                                              ; preds = %359
  %476 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %476, i32 0, i32 13
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %38, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %35, align 4
  %484 = load i32, i32* %18, align 4
  %485 = mul nsw i32 %483, %484
  %486 = load i32, i32* %37, align 4
  %487 = add nsw i32 %485, %486
  %488 = mul nsw i32 %482, %487
  %489 = load i32, i32* %34, align 4
  %490 = load i32, i32* %17, align 4
  %491 = mul nsw i32 %489, %490
  %492 = load i32, i32* %36, align 4
  %493 = add nsw i32 %491, %492
  %494 = add nsw i32 %488, %493
  store i32 %494, i32* %41, align 4
  %495 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %496 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %495, i32 0, i32 14
  %497 = load i32***, i32**** %496, align 8
  %498 = load i32, i32* %38, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32**, i32*** %497, i64 %499
  %501 = load i32**, i32*** %500, align 8
  %502 = load i32, i32* %41, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32*, i32** %501, i64 %503
  %505 = load i32*, i32** %504, align 8
  store i32* %505, i32** %42, align 8
  %506 = load i32, i32* %11, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %533

508:                                              ; preds = %475
  %509 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %510 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %509, i32 0, i32 18
  %511 = call i32 @get_bits1(%struct.TYPE_24__* %510)
  %512 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %513 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %512, i32 0, i32 11
  %514 = load i32**, i32*** %513, align 8
  %515 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %516 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %515, i32 0, i32 12
  %517 = load i64*, i64** %516, align 8
  %518 = load i32, i32* %16, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i64, i64* %517, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds i32*, i32** %514, i64 %521
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 0
  %525 = load i32, i32* %524, align 4
  %526 = mul nsw i32 %511, %525
  %527 = load i32, i32* %12, align 4
  %528 = shl i32 %526, %527
  %529 = load i32*, i32** %42, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 0
  %531 = load i32, i32* %530, align 4
  %532 = add nsw i32 %531, %528
  store i32 %532, i32* %530, align 4
  br label %569

533:                                              ; preds = %475
  %534 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %535 = load i32*, i32** %42, align 8
  %536 = load i32, i32* %16, align 4
  %537 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %538 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %537, i32 0, i32 17
  %539 = load i32*, i32** %538, align 8
  %540 = load i32, i32* %16, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %545 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %544, i32 0, i32 11
  %546 = load i32**, i32*** %545, align 8
  %547 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %548 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %547, i32 0, i32 12
  %549 = load i64*, i64** %548, align 8
  %550 = load i32, i32* %16, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i64, i64* %549, i64 %551
  %553 = load i64, i64* %552, align 8
  %554 = getelementptr inbounds i32*, i32** %546, i64 %553
  %555 = load i32*, i32** %554, align 8
  %556 = load i32, i32* %12, align 4
  %557 = call i64 @decode_dc_progressive(%struct.TYPE_23__* %534, i32* %535, i32 %536, i32 %543, i32* %555, i32 %556)
  %558 = icmp slt i64 %557, 0
  br i1 %558, label %559, label %568

559:                                              ; preds = %533
  %560 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %561 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %560, i32 0, i32 16
  %562 = load %struct.TYPE_19__*, %struct.TYPE_19__** %561, align 8
  %563 = load i32, i32* @AV_LOG_ERROR, align 4
  %564 = load i32, i32* %18, align 4
  %565 = load i32, i32* %17, align 4
  %566 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %562, i32 %563, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %564, i32 %565)
  %567 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %567, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %628

568:                                              ; preds = %533
  br label %569

569:                                              ; preds = %568, %508
  br label %570

570:                                              ; preds = %569, %474
  %571 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %572 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %571, i32 0, i32 16
  %573 = load %struct.TYPE_19__*, %struct.TYPE_19__** %572, align 8
  %574 = load i32, i32* %18, align 4
  %575 = load i32, i32* %17, align 4
  %576 = call i32 (%struct.TYPE_19__*, i8*, i32, i32, ...) @ff_dlog(%struct.TYPE_19__* %573, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %574, i32 %575)
  %577 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %578 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %577, i32 0, i32 16
  %579 = load %struct.TYPE_19__*, %struct.TYPE_19__** %578, align 8
  %580 = load i32, i32* %17, align 4
  %581 = load i32, i32* %18, align 4
  %582 = load i32, i32* %36, align 4
  %583 = load i32, i32* %37, align 4
  %584 = load i32, i32* %38, align 4
  %585 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %586 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %585, i32 0, i32 15
  %587 = load i32, i32* %586, align 8
  %588 = load i32, i32* %35, align 4
  %589 = load i32, i32* %18, align 4
  %590 = mul nsw i32 %588, %589
  %591 = load i32, i32* %37, align 4
  %592 = add nsw i32 %590, %591
  %593 = mul nsw i32 %592, 8
  %594 = load i32, i32* %34, align 4
  %595 = load i32, i32* %17, align 4
  %596 = mul nsw i32 %594, %595
  %597 = load i32, i32* %36, align 4
  %598 = add nsw i32 %596, %597
  %599 = mul nsw i32 %598, 8
  %600 = call i32 (%struct.TYPE_19__*, i8*, i32, i32, ...) @ff_dlog(%struct.TYPE_19__* %579, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %580, i32 %581, i32 %582, i32 %583, i32 %584, i32 %587, i32 %593, i32 %599)
  %601 = load i32, i32* %36, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %36, align 4
  %603 = load i32, i32* %34, align 4
  %604 = icmp eq i32 %602, %603
  br i1 %604, label %605, label %608

605:                                              ; preds = %570
  store i32 0, i32* %36, align 4
  %606 = load i32, i32* %37, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %37, align 4
  br label %608

608:                                              ; preds = %605, %570
  br label %609

609:                                              ; preds = %608
  %610 = load i32, i32* %39, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %39, align 4
  br label %260

612:                                              ; preds = %260
  br label %613

613:                                              ; preds = %612
  %614 = load i32, i32* %16, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %16, align 4
  br label %227

616:                                              ; preds = %227
  %617 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %618 = load i32, i32* %10, align 4
  %619 = call i32 @handle_rstn(%struct.TYPE_23__* %617, i32 %618)
  br label %620

620:                                              ; preds = %616
  %621 = load i32, i32* %17, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %17, align 4
  br label %179

623:                                              ; preds = %179
  br label %624

624:                                              ; preds = %623
  %625 = load i32, i32* %18, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %18, align 4
  br label %172

627:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  store i32 1, i32* %29, align 4
  br label %628

628:                                              ; preds = %627, %559, %433, %215, %74
  %629 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %629)
  %630 = load i32, i32* %8, align 4
  ret i32 %630
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, ...) #3

declare dso_local i32 @init_get_bits(%struct.TYPE_24__*, i32*, i32) #3

declare dso_local i32 @av_pix_fmt_get_chroma_sub_sample(i32, i32*, i32*) #3

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #3

declare dso_local i32 @get_bits1(%struct.TYPE_24__*) #3

declare dso_local i32 @get_bits_left(%struct.TYPE_24__*) #3

declare dso_local i32 @mjpeg_copy_block(%struct.TYPE_23__*, i32*, i32*, i32, i32) #3

declare dso_local i64 @decode_block(%struct.TYPE_23__*, i32, i32, i32, i32, i32*) #3

declare dso_local i32 @shift_output(%struct.TYPE_23__*, i32*, i32) #3

declare dso_local i64 @decode_dc_progressive(%struct.TYPE_23__*, i32*, i32, i32, i32*, i32) #3

declare dso_local i32 @ff_dlog(%struct.TYPE_19__*, i8*, i32, i32, ...) #3

declare dso_local i32 @handle_rstn(%struct.TYPE_23__*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
