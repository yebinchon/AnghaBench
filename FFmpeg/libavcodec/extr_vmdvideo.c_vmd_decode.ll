; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdvideo.c_vmd_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdvideo.c_vmd_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32, i32, i32, i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_17__ = type { i8**, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8**, i8* }
%struct.TYPE_19__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid horizontal range %d-%d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid vertical range %d-%d\0A\00", align 1
@PALETTE_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Incomplete palette\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Trying to unpack LZ-compressed frame with no LZ buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"offset > width (%d > %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)* @vmd_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_decode(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_19__, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = call i32 @AV_RL16(i32* %26)
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = call i32 @AV_RL16(i32* %31)
  store i32 %32, i32* %18, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 10
  %37 = call i32 @AV_RL16(i32* %36)
  %38 = load i32, i32* %17, align 4
  %39 = sub nsw i32 %37, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %19, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 12
  %45 = call i32 @AV_RL16(i32* %44)
  %46 = load i32, i32* %18, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %49, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %2
  %57 = load i32, i32* %20, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %67, %56, %2
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %18, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %119, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %19, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %119, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %94, %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %19, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %102, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %110, %111
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %112, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %109, %101, %93, %90, %77
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %19, align 4
  %126 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %122, i32 %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %127, i32* %3, align 4
  br label %711

128:                                              ; preds = %109
  %129 = load i32, i32* %18, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %160, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %20, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %160, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %18, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %135, %140
  br i1 %141, label %160, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %143, %148
  br i1 %149, label %160, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %153, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %150, %142, %134, %131, %128
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 6
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %20, align 4
  %167 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %163, i32 %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %168, i32* %3, align 4
  br label %711

169:                                              ; preds = %150
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %227

178:                                              ; preds = %169
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %19, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %185, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %20, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %193, %198
  br i1 %199, label %200, label %227

200:                                              ; preds = %192, %184, %181, %178
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 6
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = mul nsw i32 %217, %223
  %225 = trunc i32 %224 to i8
  %226 = call i32 @memcpy(i8* %205, i8* %212, i8 zeroext %225)
  br label %227

227:                                              ; preds = %200, %192, %169
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 16
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = sub nsw i32 %234, 16
  %236 = call i32 @bytestream2_init(%struct.TYPE_19__* %11, i32* %231, i32 %235)
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 15
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 2
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %310

244:                                              ; preds = %227
  %245 = call i32 @bytestream2_skip(%struct.TYPE_19__* %11, i8 zeroext 2)
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to i32*
  store i32* %249, i32** %7, align 8
  %250 = call zeroext i8 @bytestream2_get_bytes_left(%struct.TYPE_19__* %11)
  %251 = zext i8 %250 to i32
  %252 = load i32, i32* @PALETTE_COUNT, align 4
  %253 = mul nsw i32 %252, 3
  %254 = icmp sge i32 %251, %253
  br i1 %254, label %255, label %302

255:                                              ; preds = %244
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %298, %255
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @PALETTE_COUNT, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %301

260:                                              ; preds = %256
  %261 = call i32 @bytestream2_get_byteu(%struct.TYPE_19__* %11)
  %262 = mul nsw i32 %261, 4
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %8, align 1
  %264 = call i32 @bytestream2_get_byteu(%struct.TYPE_19__* %11)
  %265 = mul nsw i32 %264, 4
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %9, align 1
  %267 = call i32 @bytestream2_get_byteu(%struct.TYPE_19__* %11)
  %268 = mul nsw i32 %267, 4
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %10, align 1
  %270 = load i8, i8* %8, align 1
  %271 = zext i8 %270 to i32
  %272 = shl i32 %271, 16
  %273 = or i32 -16777216, %272
  %274 = load i8, i8* %9, align 1
  %275 = zext i8 %274 to i32
  %276 = shl i32 %275, 8
  %277 = or i32 %273, %276
  %278 = load i8, i8* %10, align 1
  %279 = zext i8 %278 to i32
  %280 = or i32 %277, %279
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 %280, i32* %284, align 4
  %285 = load i32*, i32** %7, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = lshr i32 %289, 6
  %291 = and i32 %290, 197379
  %292 = load i32*, i32** %7, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %291
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %260
  %299 = load i32, i32* %6, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %6, align 4
  br label %256

301:                                              ; preds = %256
  br label %309

302:                                              ; preds = %244
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 6
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = load i32, i32* @AV_LOG_ERROR, align 4
  %307 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %305, i32 %306, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %308 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %308, i32* %3, align 4
  br label %711

309:                                              ; preds = %301
  br label %310

310:                                              ; preds = %309, %227
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %310
  store i32 0, i32* %3, align 4
  br label %711

316:                                              ; preds = %310
  %317 = call zeroext i8 @bytestream2_get_bytes_left(%struct.TYPE_19__* %11)
  %318 = zext i8 %317 to i32
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %321, i32* %3, align 4
  br label %711

322:                                              ; preds = %316
  %323 = call i32 @bytestream2_get_byteu(%struct.TYPE_19__* %11)
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %12, align 1
  %325 = load i8, i8* %12, align 1
  %326 = zext i8 %325 to i32
  %327 = and i32 %326, 128
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %366

329:                                              ; preds = %322
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 8
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %341, label %334

334:                                              ; preds = %329
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 6
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %336, align 8
  %338 = load i32, i32* @AV_LOG_ERROR, align 4
  %339 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %337, i32 %338, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %340 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %340, i32* %3, align 4
  br label %711

341:                                              ; preds = %329
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call zeroext i8 @bytestream2_get_bytes_left(%struct.TYPE_19__* %11)
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @lz_unpack(i32 %343, i8 zeroext %344, i32* %347, i32 %350)
  store i32 %351, i32* %21, align 4
  %352 = load i32, i32* %21, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %341
  %355 = load i32, i32* %21, align 4
  store i32 %355, i32* %3, align 4
  br label %711

356:                                              ; preds = %341
  %357 = load i8, i8* %12, align 1
  %358 = zext i8 %357 to i32
  %359 = and i32 %358, 127
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %12, align 1
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %21, align 4
  %365 = call i32 @bytestream2_init(%struct.TYPE_19__* %11, i32* %363, i32 %364)
  br label %366

366:                                              ; preds = %356, %322
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 0
  %369 = load i8**, i8*** %368, align 8
  %370 = getelementptr inbounds i8*, i8** %369, i64 0
  %371 = load i8*, i8** %370, align 8
  %372 = load i32, i32* %18, align 4
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 1
  %375 = load i8*, i8** %374, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 0
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = mul nsw i32 %372, %378
  %380 = load i32, i32* %17, align 4
  %381 = add nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %371, i64 %382
  store i8* %383, i8** %13, align 8
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 5
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 0
  %388 = load i8**, i8*** %387, align 8
  %389 = getelementptr inbounds i8*, i8** %388, i64 0
  %390 = load i8*, i8** %389, align 8
  %391 = load i32, i32* %18, align 4
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 5
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 1
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  %398 = load i32, i32* %397, align 4
  %399 = mul nsw i32 %391, %398
  %400 = load i32, i32* %17, align 4
  %401 = add nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %390, i64 %402
  store i8* %403, i8** %14, align 8
  %404 = load i8, i8* %12, align 1
  %405 = zext i8 %404 to i32
  switch i32 %405, label %710 [
    i32 1, label %406
    i32 2, label %529
    i32 3, label %562
  ]

406:                                              ; preds = %366
  store i32 0, i32* %6, align 4
  br label %407

407:                                              ; preds = %525, %406
  %408 = load i32, i32* %6, align 4
  %409 = load i32, i32* %20, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %528

411:                                              ; preds = %407
  store i32 0, i32* %16, align 4
  br label %412

412:                                              ; preds = %488, %411
  %413 = call zeroext i8 @bytestream2_get_byte(%struct.TYPE_19__* %11)
  store i8 %413, i8* %15, align 1
  %414 = load i8, i8* %15, align 1
  %415 = zext i8 %414 to i32
  %416 = and i32 %415, 128
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %449

418:                                              ; preds = %412
  %419 = load i8, i8* %15, align 1
  %420 = zext i8 %419 to i32
  %421 = and i32 %420, 127
  %422 = add nsw i32 %421, 1
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %15, align 1
  %424 = load i32, i32* %16, align 4
  %425 = load i8, i8* %15, align 1
  %426 = zext i8 %425 to i32
  %427 = add nsw i32 %424, %426
  %428 = load i32, i32* %19, align 4
  %429 = icmp sgt i32 %427, %428
  br i1 %429, label %436, label %430

430:                                              ; preds = %418
  %431 = call zeroext i8 @bytestream2_get_bytes_left(%struct.TYPE_19__* %11)
  %432 = zext i8 %431 to i32
  %433 = load i8, i8* %15, align 1
  %434 = zext i8 %433 to i32
  %435 = icmp slt i32 %432, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %430, %418
  %437 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %437, i32* %3, align 4
  br label %711

438:                                              ; preds = %430
  %439 = load i8*, i8** %13, align 8
  %440 = load i32, i32* %16, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i8, i8* %15, align 1
  %444 = call i32 @bytestream2_get_bufferu(%struct.TYPE_19__* %11, i8* %442, i8 zeroext %443)
  %445 = load i8, i8* %15, align 1
  %446 = zext i8 %445 to i32
  %447 = load i32, i32* %16, align 4
  %448 = add nsw i32 %447, %446
  store i32 %448, i32* %16, align 4
  br label %487

449:                                              ; preds = %412
  %450 = load i32, i32* %16, align 4
  %451 = load i8, i8* %15, align 1
  %452 = zext i8 %451 to i32
  %453 = add nsw i32 %450, %452
  %454 = add nsw i32 %453, 1
  %455 = load i32, i32* %19, align 4
  %456 = icmp sgt i32 %454, %455
  br i1 %456, label %466, label %457

457:                                              ; preds = %449
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %458, i32 0, i32 5
  %460 = load %struct.TYPE_17__*, %struct.TYPE_17__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %460, i32 0, i32 0
  %462 = load i8**, i8*** %461, align 8
  %463 = getelementptr inbounds i8*, i8** %462, i64 0
  %464 = load i8*, i8** %463, align 8
  %465 = icmp ne i8* %464, null
  br i1 %465, label %468, label %466

466:                                              ; preds = %457, %449
  %467 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %467, i32* %3, align 4
  br label %711

468:                                              ; preds = %457
  %469 = load i8*, i8** %13, align 8
  %470 = load i32, i32* %16, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* %469, i64 %471
  %473 = load i8*, i8** %14, align 8
  %474 = load i32, i32* %16, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = load i8, i8* %15, align 1
  %478 = zext i8 %477 to i32
  %479 = add nsw i32 %478, 1
  %480 = trunc i32 %479 to i8
  %481 = call i32 @memcpy(i8* %472, i8* %476, i8 zeroext %480)
  %482 = load i8, i8* %15, align 1
  %483 = zext i8 %482 to i32
  %484 = add nsw i32 %483, 1
  %485 = load i32, i32* %16, align 4
  %486 = add nsw i32 %485, %484
  store i32 %486, i32* %16, align 4
  br label %487

487:                                              ; preds = %468, %438
  br label %488

488:                                              ; preds = %487
  %489 = load i32, i32* %16, align 4
  %490 = load i32, i32* %19, align 4
  %491 = icmp slt i32 %489, %490
  br i1 %491, label %412, label %492

492:                                              ; preds = %488
  %493 = load i32, i32* %16, align 4
  %494 = load i32, i32* %19, align 4
  %495 = icmp sgt i32 %493, %494
  br i1 %495, label %496, label %505

496:                                              ; preds = %492
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 6
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %498, align 8
  %500 = load i32, i32* @AV_LOG_ERROR, align 4
  %501 = load i32, i32* %16, align 4
  %502 = load i32, i32* %19, align 4
  %503 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %499, i32 %500, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %501, i32 %502)
  %504 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %504, i32* %3, align 4
  br label %711

505:                                              ; preds = %492
  %506 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %506, i32 0, i32 1
  %508 = load i8*, i8** %507, align 8
  %509 = getelementptr inbounds i8, i8* %508, i64 0
  %510 = load i8, i8* %509, align 1
  %511 = zext i8 %510 to i32
  %512 = load i8*, i8** %13, align 8
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i8, i8* %512, i64 %513
  store i8* %514, i8** %13, align 8
  %515 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %516 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %515, i32 0, i32 5
  %517 = load %struct.TYPE_17__*, %struct.TYPE_17__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %517, i32 0, i32 1
  %519 = load i32*, i32** %518, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 0
  %521 = load i32, i32* %520, align 4
  %522 = load i8*, i8** %14, align 8
  %523 = sext i32 %521 to i64
  %524 = getelementptr inbounds i8, i8* %522, i64 %523
  store i8* %524, i8** %14, align 8
  br label %525

525:                                              ; preds = %505
  %526 = load i32, i32* %6, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %6, align 4
  br label %407

528:                                              ; preds = %407
  br label %710

529:                                              ; preds = %366
  store i32 0, i32* %6, align 4
  br label %530

530:                                              ; preds = %558, %529
  %531 = load i32, i32* %6, align 4
  %532 = load i32, i32* %20, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %561

534:                                              ; preds = %530
  %535 = load i8*, i8** %13, align 8
  %536 = load i32, i32* %19, align 4
  %537 = trunc i32 %536 to i8
  %538 = call i32 @bytestream2_get_buffer(%struct.TYPE_19__* %11, i8* %535, i8 zeroext %537)
  %539 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i32 0, i32 1
  %541 = load i8*, i8** %540, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 0
  %543 = load i8, i8* %542, align 1
  %544 = zext i8 %543 to i32
  %545 = load i8*, i8** %13, align 8
  %546 = sext i32 %544 to i64
  %547 = getelementptr inbounds i8, i8* %545, i64 %546
  store i8* %547, i8** %13, align 8
  %548 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %548, i32 0, i32 5
  %550 = load %struct.TYPE_17__*, %struct.TYPE_17__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %550, i32 0, i32 1
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 0
  %554 = load i32, i32* %553, align 4
  %555 = load i8*, i8** %14, align 8
  %556 = sext i32 %554 to i64
  %557 = getelementptr inbounds i8, i8* %555, i64 %556
  store i8* %557, i8** %14, align 8
  br label %558

558:                                              ; preds = %534
  %559 = load i32, i32* %6, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %6, align 4
  br label %530

561:                                              ; preds = %530
  br label %710

562:                                              ; preds = %366
  store i32 0, i32* %6, align 4
  br label %563

563:                                              ; preds = %706, %562
  %564 = load i32, i32* %6, align 4
  %565 = load i32, i32* %20, align 4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %567, label %709

567:                                              ; preds = %563
  store i32 0, i32* %16, align 4
  br label %568

568:                                              ; preds = %669, %567
  %569 = call zeroext i8 @bytestream2_get_byte(%struct.TYPE_19__* %11)
  store i8 %569, i8* %15, align 1
  %570 = load i8, i8* %15, align 1
  %571 = zext i8 %570 to i32
  %572 = and i32 %571, 128
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %630

574:                                              ; preds = %568
  %575 = load i8, i8* %15, align 1
  %576 = zext i8 %575 to i32
  %577 = and i32 %576, 127
  %578 = add nsw i32 %577, 1
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %15, align 1
  %580 = call i32 @bytestream2_peek_byte(%struct.TYPE_19__* %11)
  %581 = icmp eq i32 %580, 255
  br i1 %581, label %582, label %603

582:                                              ; preds = %574
  %583 = load i8, i8* %15, align 1
  %584 = zext i8 %583 to i32
  store i32 %584, i32* %22, align 4
  %585 = call zeroext i8 @bytestream2_get_byte(%struct.TYPE_19__* %11)
  %586 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = load i8*, i8** %13, align 8
  %589 = load i32, i32* %16, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i8, i8* %588, i64 %590
  %592 = load i8, i8* %15, align 1
  %593 = call zeroext i8 @bytestream2_get_bytes_left(%struct.TYPE_19__* %11)
  %594 = load i32, i32* %19, align 4
  %595 = load i32, i32* %16, align 4
  %596 = sub nsw i32 %594, %595
  %597 = call zeroext i8 @rle_unpack(i32 %587, i8* %591, i8 zeroext %592, i8 zeroext %593, i32 %596)
  store i8 %597, i8* %15, align 1
  %598 = load i32, i32* %22, align 4
  %599 = load i32, i32* %16, align 4
  %600 = add nsw i32 %599, %598
  store i32 %600, i32* %16, align 4
  %601 = load i8, i8* %15, align 1
  %602 = call i32 @bytestream2_skip(%struct.TYPE_19__* %11, i8 zeroext %601)
  br label %629

603:                                              ; preds = %574
  %604 = load i32, i32* %16, align 4
  %605 = load i8, i8* %15, align 1
  %606 = zext i8 %605 to i32
  %607 = add nsw i32 %604, %606
  %608 = load i32, i32* %19, align 4
  %609 = icmp sgt i32 %607, %608
  br i1 %609, label %616, label %610

610:                                              ; preds = %603
  %611 = call zeroext i8 @bytestream2_get_bytes_left(%struct.TYPE_19__* %11)
  %612 = zext i8 %611 to i32
  %613 = load i8, i8* %15, align 1
  %614 = zext i8 %613 to i32
  %615 = icmp slt i32 %612, %614
  br i1 %615, label %616, label %618

616:                                              ; preds = %610, %603
  %617 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %617, i32* %3, align 4
  br label %711

618:                                              ; preds = %610
  %619 = load i8*, i8** %13, align 8
  %620 = load i32, i32* %16, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i8, i8* %619, i64 %621
  %623 = load i8, i8* %15, align 1
  %624 = call i32 @bytestream2_get_buffer(%struct.TYPE_19__* %11, i8* %622, i8 zeroext %623)
  %625 = load i8, i8* %15, align 1
  %626 = zext i8 %625 to i32
  %627 = load i32, i32* %16, align 4
  %628 = add nsw i32 %627, %626
  store i32 %628, i32* %16, align 4
  br label %629

629:                                              ; preds = %618, %582
  br label %668

630:                                              ; preds = %568
  %631 = load i32, i32* %16, align 4
  %632 = load i8, i8* %15, align 1
  %633 = zext i8 %632 to i32
  %634 = add nsw i32 %631, %633
  %635 = add nsw i32 %634, 1
  %636 = load i32, i32* %19, align 4
  %637 = icmp sgt i32 %635, %636
  br i1 %637, label %647, label %638

638:                                              ; preds = %630
  %639 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %640 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %639, i32 0, i32 5
  %641 = load %struct.TYPE_17__*, %struct.TYPE_17__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %641, i32 0, i32 0
  %643 = load i8**, i8*** %642, align 8
  %644 = getelementptr inbounds i8*, i8** %643, i64 0
  %645 = load i8*, i8** %644, align 8
  %646 = icmp ne i8* %645, null
  br i1 %646, label %649, label %647

647:                                              ; preds = %638, %630
  %648 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %648, i32* %3, align 4
  br label %711

649:                                              ; preds = %638
  %650 = load i8*, i8** %13, align 8
  %651 = load i32, i32* %16, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, i8* %650, i64 %652
  %654 = load i8*, i8** %14, align 8
  %655 = load i32, i32* %16, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i8, i8* %654, i64 %656
  %658 = load i8, i8* %15, align 1
  %659 = zext i8 %658 to i32
  %660 = add nsw i32 %659, 1
  %661 = trunc i32 %660 to i8
  %662 = call i32 @memcpy(i8* %653, i8* %657, i8 zeroext %661)
  %663 = load i8, i8* %15, align 1
  %664 = zext i8 %663 to i32
  %665 = add nsw i32 %664, 1
  %666 = load i32, i32* %16, align 4
  %667 = add nsw i32 %666, %665
  store i32 %667, i32* %16, align 4
  br label %668

668:                                              ; preds = %649, %629
  br label %669

669:                                              ; preds = %668
  %670 = load i32, i32* %16, align 4
  %671 = load i32, i32* %19, align 4
  %672 = icmp slt i32 %670, %671
  br i1 %672, label %568, label %673

673:                                              ; preds = %669
  %674 = load i32, i32* %16, align 4
  %675 = load i32, i32* %19, align 4
  %676 = icmp sgt i32 %674, %675
  br i1 %676, label %677, label %686

677:                                              ; preds = %673
  %678 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %679 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %678, i32 0, i32 6
  %680 = load %struct.TYPE_16__*, %struct.TYPE_16__** %679, align 8
  %681 = load i32, i32* @AV_LOG_ERROR, align 4
  %682 = load i32, i32* %16, align 4
  %683 = load i32, i32* %19, align 4
  %684 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %680, i32 %681, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %682, i32 %683)
  %685 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %685, i32* %3, align 4
  br label %711

686:                                              ; preds = %673
  %687 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %688 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %687, i32 0, i32 1
  %689 = load i8*, i8** %688, align 8
  %690 = getelementptr inbounds i8, i8* %689, i64 0
  %691 = load i8, i8* %690, align 1
  %692 = zext i8 %691 to i32
  %693 = load i8*, i8** %13, align 8
  %694 = sext i32 %692 to i64
  %695 = getelementptr inbounds i8, i8* %693, i64 %694
  store i8* %695, i8** %13, align 8
  %696 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %697 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %696, i32 0, i32 5
  %698 = load %struct.TYPE_17__*, %struct.TYPE_17__** %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %698, i32 0, i32 1
  %700 = load i32*, i32** %699, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 0
  %702 = load i32, i32* %701, align 4
  %703 = load i8*, i8** %14, align 8
  %704 = sext i32 %702 to i64
  %705 = getelementptr inbounds i8, i8* %703, i64 %704
  store i8* %705, i8** %14, align 8
  br label %706

706:                                              ; preds = %686
  %707 = load i32, i32* %6, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %6, align 4
  br label %563

709:                                              ; preds = %563
  br label %710

710:                                              ; preds = %366, %709, %561, %528
  store i32 0, i32* %3, align 4
  br label %711

711:                                              ; preds = %710, %677, %647, %616, %496, %466, %436, %354, %334, %320, %315, %302, %160, %119
  %712 = load i32, i32* %3, align 4
  ret i32 %712
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @bytestream2_init(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_19__*, i8 zeroext) #1

declare dso_local zeroext i8 @bytestream2_get_bytes_left(%struct.TYPE_19__*) #1

declare dso_local i32 @bytestream2_get_byteu(%struct.TYPE_19__*) #1

declare dso_local i32 @lz_unpack(i32, i8 zeroext, i32*, i32) #1

declare dso_local zeroext i8 @bytestream2_get_byte(%struct.TYPE_19__*) #1

declare dso_local i32 @bytestream2_get_bufferu(%struct.TYPE_19__*, i8*, i8 zeroext) #1

declare dso_local i32 @bytestream2_get_buffer(%struct.TYPE_19__*, i8*, i8 zeroext) #1

declare dso_local i32 @bytestream2_peek_byte(%struct.TYPE_19__*) #1

declare dso_local zeroext i8 @rle_unpack(i32, i8*, i8 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
