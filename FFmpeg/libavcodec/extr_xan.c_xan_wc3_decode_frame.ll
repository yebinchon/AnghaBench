; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xan.c_xan_wc3_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xan.c_xan_wc3_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"size_segment overread\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"vector_segment overread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @xan_wc3_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xan_wc3_decode_frame(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %17, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32* %54, i32** %18, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %19, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %20, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %67

65:                                               ; preds = %2
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %3, align 4
  br label %344

67:                                               ; preds = %2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @AV_RL16(i32* %71)
  store i32 %72, i32* %25, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = call i32 @AV_RL16(i32* %76)
  store i32 %77, i32* %26, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = call i32 @AV_RL16(i32* %81)
  store i32 %82, i32* %27, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  %87 = call i32 @AV_RL16(i32* %86)
  store i32 %87, i32* %28, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %111, label %93

93:                                               ; preds = %67
  %94 = load i32, i32* %26, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %27, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %28, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105, %99, %93, %67
  %112 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %112, i32* %3, align 4
  br label %344

113:                                              ; preds = %105
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %25, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32* %119, i32** %21, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %26, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %26, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 @bytestream2_init(i32* %22, i32* %125, i32 %130)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %27, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %27, align 4
  %142 = sub nsw i32 %140, %141
  %143 = call i32 @bytestream2_init(i32* %23, i32* %137, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %28, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32* %149, i32** %24, align 8
  %150 = load i32*, i32** %17, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load i32*, i32** %21, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %25, align 4
  %157 = sub nsw i32 %155, %156
  %158 = call i32 @xan_huffman_decode(i32* %150, i32 %151, i32* %152, i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %113
  %161 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %161, i32* %3, align 4
  br label %344

162:                                              ; preds = %113
  %163 = load i32*, i32** %17, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32* %166, i32** %18, align 8
  %167 = load i32*, i32** %24, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %190

171:                                              ; preds = %162
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %24, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %28, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sub nsw i32 %184, 1
  %186 = call i32 @xan_unpack(i32* %174, i32 %177, i32* %179, i32 %185)
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %29, align 4
  br label %199

190:                                              ; preds = %162
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %28, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sub nsw i32 %195, 1
  store i32 %196, i32* %29, align 4
  %197 = load i32*, i32** %24, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32* %198, i32** %20, align 8
  br label %199

199:                                              ; preds = %190, %171
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %200

200:                                              ; preds = %327, %214, %199
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32*, i32** %17, align 8
  %205 = load i32*, i32** %18, align 8
  %206 = icmp ult i32* %204, %205
  br label %207

207:                                              ; preds = %203, %200
  %208 = phi i1 [ false, %200 ], [ %206, %203 ]
  br i1 %208, label %209, label %343

209:                                              ; preds = %207
  %210 = load i32*, i32** %17, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %17, align 8
  %212 = load i32, i32* %210, align 4
  store i32 %212, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %213 = load i32, i32* %9, align 4
  switch i32 %213, label %260 [
    i32 0, label %214
    i32 1, label %217
    i32 2, label %217
    i32 3, label %217
    i32 4, label %217
    i32 5, label %217
    i32 6, label %217
    i32 7, label %217
    i32 8, label %217
    i32 12, label %219
    i32 13, label %219
    i32 14, label %219
    i32 15, label %219
    i32 16, label %219
    i32 17, label %219
    i32 18, label %219
    i32 9, label %224
    i32 19, label %224
    i32 10, label %236
    i32 20, label %236
    i32 11, label %248
    i32 21, label %248
  ]

214:                                              ; preds = %209
  %215 = load i32, i32* %10, align 4
  %216 = xor i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %200

217:                                              ; preds = %209, %209, %209, %209, %209, %209, %209, %209
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %11, align 4
  br label %260

219:                                              ; preds = %209, %209, %209, %209, %209, %209, %209
  %220 = load i32, i32* %9, align 4
  %221 = sub nsw i32 %220, 10
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %11, align 4
  br label %260

224:                                              ; preds = %209, %209
  %225 = call i64 @bytestream2_get_bytes_left(i32* %22)
  %226 = icmp slt i64 %225, 1
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 6
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load i32, i32* @AV_LOG_ERROR, align 4
  %232 = call i32 @av_log(%struct.TYPE_7__* %230, i32 %231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %233 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %233, i32* %3, align 4
  br label %344

234:                                              ; preds = %224
  %235 = call i32 @bytestream2_get_byte(i32* %22)
  store i32 %235, i32* %11, align 4
  br label %260

236:                                              ; preds = %209, %209
  %237 = call i64 @bytestream2_get_bytes_left(i32* %22)
  %238 = icmp slt i64 %237, 2
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 6
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = load i32, i32* @AV_LOG_ERROR, align 4
  %244 = call i32 @av_log(%struct.TYPE_7__* %242, i32 %243, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %245 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %245, i32* %3, align 4
  br label %344

246:                                              ; preds = %236
  %247 = call i32 @bytestream2_get_be16(i32* %22)
  store i32 %247, i32* %11, align 4
  br label %260

248:                                              ; preds = %209, %209
  %249 = call i64 @bytestream2_get_bytes_left(i32* %22)
  %250 = icmp slt i64 %249, 3
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 6
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = load i32, i32* @AV_LOG_ERROR, align 4
  %256 = call i32 @av_log(%struct.TYPE_7__* %254, i32 %255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %257 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %257, i32* %3, align 4
  br label %344

258:                                              ; preds = %248
  %259 = call i32 @bytestream2_get_be24(i32* %22)
  store i32 %259, i32* %11, align 4
  br label %260

260:                                              ; preds = %209, %258, %246, %234, %219, %217
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp sgt i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %343

265:                                              ; preds = %260
  %266 = load i32, i32* %9, align 4
  %267 = icmp slt i32 %266, 12
  br i1 %267, label %268, label %301

268:                                              ; preds = %265
  %269 = load i32, i32* %10, align 4
  %270 = xor i32 %269, 1
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %275 = load i32*, i32** %5, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @xan_wc3_copy_pixel_run(%struct.TYPE_6__* %274, i32* %275, i32 %276, i32 %277, i32 %278, i32 0, i32 0)
  br label %300

280:                                              ; preds = %268
  %281 = load i32, i32* %29, align 4
  %282 = load i32, i32* %11, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %343

285:                                              ; preds = %280
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %287 = load i32*, i32** %5, align 8
  %288 = load i32*, i32** %20, align 8
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @xan_wc3_output_pixel_run(%struct.TYPE_6__* %286, i32* %287, i32* %288, i32 %289, i32 %290, i32 %291)
  %293 = load i32, i32* %11, align 4
  %294 = load i32*, i32** %20, align 8
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  store i32* %296, i32** %20, align 8
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %29, align 4
  %299 = sub nsw i32 %298, %297
  store i32 %299, i32* %29, align 4
  br label %300

300:                                              ; preds = %285, %273
  br label %327

301:                                              ; preds = %265
  %302 = call i64 @bytestream2_get_bytes_left(i32* %23)
  %303 = icmp sle i64 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %301
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 6
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %306, align 8
  %308 = load i32, i32* @AV_LOG_ERROR, align 4
  %309 = call i32 @av_log(%struct.TYPE_7__* %307, i32 %308, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %310 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %310, i32* %3, align 4
  br label %344

311:                                              ; preds = %301
  %312 = call i32 @bytestream2_get_byte(i32* %23)
  store i32 %312, i32* %30, align 4
  %313 = load i32, i32* %30, align 4
  %314 = ashr i32 %313, 4
  %315 = call i32 @sign_extend(i32 %314, i32 4)
  store i32 %315, i32* %12, align 4
  %316 = load i32, i32* %30, align 4
  %317 = and i32 %316, 15
  %318 = call i32 @sign_extend(i32 %317, i32 4)
  store i32 %318, i32* %13, align 4
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %320 = load i32*, i32** %5, align 8
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* %13, align 4
  %326 = call i32 @xan_wc3_copy_pixel_run(%struct.TYPE_6__* %319, i32* %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325)
  store i32 0, i32* %10, align 4
  br label %327

327:                                              ; preds = %311, %300
  %328 = load i32, i32* %11, align 4
  %329 = load i32, i32* %8, align 4
  %330 = sub nsw i32 %329, %328
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %331, %332
  %334 = load i32, i32* %6, align 4
  %335 = sdiv i32 %333, %334
  %336 = load i32, i32* %15, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %15, align 4
  %338 = load i32, i32* %14, align 4
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 %338, %339
  %341 = load i32, i32* %6, align 4
  %342 = srem i32 %340, %341
  store i32 %342, i32* %14, align 4
  br label %200

343:                                              ; preds = %284, %264, %207
  store i32 0, i32* %3, align 4
  br label %344

344:                                              ; preds = %343, %304, %251, %239, %227, %160, %111, %65
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @xan_huffman_decode(i32*, i32, i32*, i32) #1

declare dso_local i32 @xan_unpack(i32*, i32, i32*, i32) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_be24(i32*) #1

declare dso_local i32 @xan_wc3_copy_pixel_run(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xan_wc3_output_pixel_run(%struct.TYPE_6__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
