; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode_mjpeg.c_vaapi_encode_mjpeg_write_extra_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode_mjpeg.c_vaapi_encode_mjpeg_write_extra_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_25__, %struct.TYPE_19__, %struct.TYPE_24__, %struct.TYPE_16__ }
%struct.TYPE_25__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_16__ = type { i64*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32*, %struct.TYPE_20__*, i32*, i32* }
%struct.TYPE_20__ = type { i32*, i32*, i32*, i32* }

@ENOSPC = common dso_local global i32 0, align 4
@VAQMatrixBufferType = common dso_local global i32 0, align 4
@VAHuffmanTableBufferType = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, i32, i32*, i8*, i64*)* @vaapi_encode_mjpeg_write_extra_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_encode_mjpeg_write_extra_buffer(%struct.TYPE_17__* %0, i32* %1, i32 %2, i32* %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %14, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %6
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 3
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %18, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 2
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %19, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %36, 40
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %7, align 4
  br label %299

41:                                               ; preds = %30
  %42 = load i32, i32* @VAQMatrixBufferType, align 4
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64*, i64** %13, align 8
  store i64 40, i64* %44, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %20, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %48 = call i32 @memset(%struct.TYPE_21__* %47, i32 0, i32 40)
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %76, %41
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 64
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %54
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %51

79:                                               ; preds = %51
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %112, %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %88, 64
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %90
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %87

115:                                              ; preds = %87
  br label %116

116:                                              ; preds = %115, %79
  br label %298

117:                                              ; preds = %6
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %295

120:                                              ; preds = %117
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  store %struct.TYPE_23__* %123, %struct.TYPE_23__** %21, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  store %struct.TYPE_25__* %125, %struct.TYPE_25__** %22, align 8
  %126 = load i64*, i64** %13, align 8
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %127, 40
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i32, i32* @ENOSPC, align 4
  %131 = call i32 @AVERROR(i32 %130)
  store i32 %131, i32* %7, align 4
  br label %299

132:                                              ; preds = %120
  %133 = load i32, i32* @VAHuffmanTableBufferType, align 4
  %134 = load i32*, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i64*, i64** %13, align 8
  store i64 40, i64* %135, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = bitcast i8* %136 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %23, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %139 = call i32 @memset(%struct.TYPE_21__* %138, i32 0, i32 40)
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %291, %132
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %144, 1
  %146 = zext i1 %145 to i32
  %147 = add nsw i32 1, %146
  %148 = icmp slt i32 %141, %147
  br i1 %148, label %149, label %294

149:                                              ; preds = %140
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 1, i32* %155, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = mul nsw i32 2, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i64 %161
  store %struct.TYPE_15__* %162, %struct.TYPE_15__** %24, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %187, %149
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %164, 16
  br i1 %165, label %166, label %190

166:                                              ; preds = %163
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %173, i32* %184, align 4
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, %173
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %166
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %16, align 4
  br label %163

190:                                              ; preds = %163
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp ule i64 %192, 8
  %194 = zext i1 %193 to i32
  %195 = call i32 @av_assert0(i32 %194)
  store i32 0, i32* %16, align 4
  br label %196

196:                                              ; preds = %219, %190
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %196
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %207, i32* %218, align 4
  br label %219

219:                                              ; preds = %200
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %196

222:                                              ; preds = %196
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = mul nsw i32 2, %226
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i64 %229
  store %struct.TYPE_15__* %230, %struct.TYPE_15__** %24, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %231

231:                                              ; preds = %255, %222
  %232 = load i32, i32* %16, align 4
  %233 = icmp slt i32 %232, 16
  br i1 %233, label %234, label %258

234:                                              ; preds = %231
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %241, i32* %252, align 4
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, %241
  store i32 %254, i32* %17, align 4
  br label %255

255:                                              ; preds = %234
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  br label %231

258:                                              ; preds = %231
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = icmp ule i64 %260, 8
  %262 = zext i1 %261 to i32
  %263 = call i32 @av_assert0(i32 %262)
  store i32 0, i32* %16, align 4
  br label %264

264:                                              ; preds = %287, %258
  %265 = load i32, i32* %16, align 4
  %266 = load i32, i32* %17, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %290

268:                                              ; preds = %264
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 3
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %277, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %16, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 %275, i32* %286, align 4
  br label %287

287:                                              ; preds = %268
  %288 = load i32, i32* %16, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %16, align 4
  br label %264

290:                                              ; preds = %264
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %15, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %15, align 4
  br label %140

294:                                              ; preds = %140
  br label %297

295:                                              ; preds = %117
  %296 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %296, i32* %7, align 4
  br label %299

297:                                              ; preds = %294
  br label %298

298:                                              ; preds = %297, %116
  store i32 0, i32* %7, align 4
  br label %299

299:                                              ; preds = %298, %295, %129, %38
  %300 = load i32, i32* %7, align 4
  ret i32 %300
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
