; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rpza.c_rpza_decode_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rpza.c_rpza_decode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"First chunk byte is 0x%02x instead of 0xe1\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"MOV chunk size %d != encoded chunk size %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Unknown opcode %d in rpza chunk. Skip remaining %d bytes of chunk data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @rpza_decode_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpza_decode_stream(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @bytestream2_peek_byte(i32* %31)
  %33 = icmp ne i32 %32, 225
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @bytestream2_peek_byte(i32* %40)
  %42 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_7__* %37, i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %34, %1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @bytestream2_get_be32(i32* %45)
  %47 = and i32 %46, 16777215
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @bytestream2_get_bytes_left(i32* %50)
  %52 = add nsw i32 %51, 4
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* @AV_LOG_WARNING, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @bytestream2_get_bytes_left(i32* %61)
  %63 = add nsw i32 %62, 4
  %64 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_7__* %57, i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %54, %43
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 3
  %72 = sdiv i32 %71, 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 3
  %79 = sdiv i32 %78, 4
  %80 = mul nsw i32 %72, %79
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = sdiv i32 %81, 32
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @bytestream2_get_bytes_left(i32* %84)
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %65
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %2, align 4
  br label %412

89:                                               ; preds = %65
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @ff_reget_buffer(%struct.TYPE_7__* %92, %struct.TYPE_8__* %95, i32 0)
  store i32 %96, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %412

100:                                              ; preds = %89
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  store i32* %108, i32** %14, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %115, 2
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %117, 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %410, %100
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = call i32 @bytestream2_get_bytes_left(i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %411

124:                                              ; preds = %119
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = call i32 @bytestream2_get_byte(i32* %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  %129 = and i32 %128, 31
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %21, align 4
  %132 = and i32 %131, 128
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %124
  %135 = load i32, i32* %21, align 4
  %136 = shl i32 %135, 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = call i32 @bytestream2_get_byte(i32* %138)
  %140 = or i32 %136, %139
  store i32 %140, i32* %9, align 4
  store i32 0, i32* %21, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = call i32 @bytestream2_peek_byte(i32* %142)
  %144 = and i32 %143, 128
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  store i32 32, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %147

147:                                              ; preds = %146, %134
  br label %148

148:                                              ; preds = %147, %124
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %20, align 4
  %151 = call i32 @FFMIN(i32 %149, i32 %150)
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %21, align 4
  %153 = and i32 %152, 224
  switch i32 %153, label %399 [
    i32 128, label %154
    i32 160, label %163
    i32 192, label %204
    i32 32, label %208
    i32 0, label %350
  ]

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %159, %154
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %22, align 4
  %158 = icmp ne i32 %156, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = call i32 (...) @CHECK_BLOCK()
  %161 = call i32 (...) @ADVANCE_BLOCK()
  br label %155

162:                                              ; preds = %155
  br label %410

163:                                              ; preds = %148
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @bytestream2_get_be16(i32* %165)
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %201, %163
  %168 = load i32, i32* %22, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %22, align 4
  %170 = icmp ne i32 %168, 0
  br i1 %170, label %171, label %203

171:                                              ; preds = %167
  %172 = call i32 (...) @CHECK_BLOCK()
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %173, %174
  store i32 %175, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %176

176:                                              ; preds = %198, %171
  %177 = load i32, i32* %19, align 4
  %178 = icmp slt i32 %177, 4
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  store i32 0, i32* %18, align 4
  br label %180

180:                                              ; preds = %191, %179
  %181 = load i32, i32* %18, align 4
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i32, i32* %9, align 4
  %185 = load i32*, i32** %14, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %18, align 4
  br label %180

194:                                              ; preds = %180
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %176

201:                                              ; preds = %176
  %202 = call i32 (...) @ADVANCE_BLOCK()
  br label %167

203:                                              ; preds = %167
  br label %410

204:                                              ; preds = %148
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = call i32 @bytestream2_get_be16(i32* %206)
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %148, %204
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = call i32 @bytestream2_get_be16(i32* %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %212, i32* %213, align 16
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %214, align 4
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %215, align 8
  %216 = load i32, i32* %9, align 4
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* %9, align 4
  %219 = ashr i32 %218, 10
  %220 = and i32 %219, 31
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %10, align 4
  %222 = ashr i32 %221, 10
  %223 = and i32 %222, 31
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %12, align 4
  %225 = mul nsw i32 11, %224
  %226 = load i32, i32* %13, align 4
  %227 = mul nsw i32 21, %226
  %228 = add nsw i32 %225, %227
  %229 = ashr i32 %228, 5
  %230 = shl i32 %229, 10
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %230
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %12, align 4
  %235 = mul nsw i32 21, %234
  %236 = load i32, i32* %13, align 4
  %237 = mul nsw i32 11, %236
  %238 = add nsw i32 %235, %237
  %239 = ashr i32 %238, 5
  %240 = shl i32 %239, 10
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %240
  store i32 %243, i32* %241, align 8
  %244 = load i32, i32* %9, align 4
  %245 = ashr i32 %244, 5
  %246 = and i32 %245, 31
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %10, align 4
  %248 = ashr i32 %247, 5
  %249 = and i32 %248, 31
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %12, align 4
  %251 = mul nsw i32 11, %250
  %252 = load i32, i32* %13, align 4
  %253 = mul nsw i32 21, %252
  %254 = add nsw i32 %251, %253
  %255 = ashr i32 %254, 5
  %256 = shl i32 %255, 5
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %256
  store i32 %259, i32* %257, align 4
  %260 = load i32, i32* %12, align 4
  %261 = mul nsw i32 21, %260
  %262 = load i32, i32* %13, align 4
  %263 = mul nsw i32 11, %262
  %264 = add nsw i32 %261, %263
  %265 = ashr i32 %264, 5
  %266 = shl i32 %265, 5
  %267 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %266
  store i32 %269, i32* %267, align 8
  %270 = load i32, i32* %9, align 4
  %271 = and i32 %270, 31
  store i32 %271, i32* %12, align 4
  %272 = load i32, i32* %10, align 4
  %273 = and i32 %272, 31
  store i32 %273, i32* %13, align 4
  %274 = load i32, i32* %12, align 4
  %275 = mul nsw i32 11, %274
  %276 = load i32, i32* %13, align 4
  %277 = mul nsw i32 21, %276
  %278 = add nsw i32 %275, %277
  %279 = ashr i32 %278, 5
  %280 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %281, %279
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* %12, align 4
  %284 = mul nsw i32 21, %283
  %285 = load i32, i32* %13, align 4
  %286 = mul nsw i32 11, %285
  %287 = add nsw i32 %284, %286
  %288 = ashr i32 %287, 5
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %288
  store i32 %291, i32* %289, align 8
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = call i32 @bytestream2_get_bytes_left(i32* %293)
  %295 = load i32, i32* %22, align 4
  %296 = mul nsw i32 %295, 4
  %297 = icmp slt i32 %294, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %208
  %299 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %299, i32* %2, align 4
  br label %412

300:                                              ; preds = %208
  br label %301

301:                                              ; preds = %347, %300
  %302 = load i32, i32* %22, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %22, align 4
  %304 = icmp ne i32 %302, 0
  br i1 %304, label %305, label %349

305:                                              ; preds = %301
  %306 = call i32 (...) @CHECK_BLOCK()
  %307 = load i32, i32* %15, align 4
  %308 = load i32, i32* %16, align 4
  %309 = add nsw i32 %307, %308
  store i32 %309, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %310

310:                                              ; preds = %344, %305
  %311 = load i32, i32* %19, align 4
  %312 = icmp slt i32 %311, 4
  br i1 %312, label %313, label %347

313:                                              ; preds = %310
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = call i32 @bytestream2_get_byteu(i32* %315)
  store i32 %316, i32* %23, align 4
  store i32 0, i32* %18, align 4
  br label %317

317:                                              ; preds = %337, %313
  %318 = load i32, i32* %18, align 4
  %319 = icmp slt i32 %318, 4
  br i1 %319, label %320, label %340

320:                                              ; preds = %317
  %321 = load i32, i32* %23, align 4
  %322 = load i32, i32* %18, align 4
  %323 = sub nsw i32 3, %322
  %324 = mul nsw i32 2, %323
  %325 = ashr i32 %321, %324
  %326 = and i32 %325, 3
  store i32 %326, i32* %24, align 4
  %327 = load i32, i32* %24, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = load i32*, i32** %14, align 8
  %332 = load i32, i32* %17, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %330, i32* %334, align 4
  %335 = load i32, i32* %17, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %17, align 4
  br label %337

337:                                              ; preds = %320
  %338 = load i32, i32* %18, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %18, align 4
  br label %317

340:                                              ; preds = %317
  %341 = load i32, i32* %6, align 4
  %342 = load i32, i32* %17, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %17, align 4
  br label %344

344:                                              ; preds = %340
  %345 = load i32, i32* %19, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %19, align 4
  br label %310

347:                                              ; preds = %310
  %348 = call i32 (...) @ADVANCE_BLOCK()
  br label %301

349:                                              ; preds = %301
  br label %410

350:                                              ; preds = %148
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 0
  %353 = call i32 @bytestream2_get_bytes_left(i32* %352)
  %354 = icmp slt i32 %353, 30
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %356, i32* %2, align 4
  br label %412

357:                                              ; preds = %350
  %358 = call i32 (...) @CHECK_BLOCK()
  %359 = load i32, i32* %15, align 4
  %360 = load i32, i32* %16, align 4
  %361 = add nsw i32 %359, %360
  store i32 %361, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %362

362:                                              ; preds = %394, %357
  %363 = load i32, i32* %19, align 4
  %364 = icmp slt i32 %363, 4
  br i1 %364, label %365, label %397

365:                                              ; preds = %362
  store i32 0, i32* %18, align 4
  br label %366

366:                                              ; preds = %387, %365
  %367 = load i32, i32* %18, align 4
  %368 = icmp slt i32 %367, 4
  br i1 %368, label %369, label %390

369:                                              ; preds = %366
  %370 = load i32, i32* %19, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %369
  %373 = load i32, i32* %18, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %372, %369
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  %378 = call i32 @bytestream2_get_be16u(i32* %377)
  store i32 %378, i32* %9, align 4
  br label %379

379:                                              ; preds = %375, %372
  %380 = load i32, i32* %9, align 4
  %381 = load i32*, i32** %14, align 8
  %382 = load i32, i32* %17, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %380, i32* %384, align 4
  %385 = load i32, i32* %17, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %17, align 4
  br label %387

387:                                              ; preds = %379
  %388 = load i32, i32* %18, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %18, align 4
  br label %366

390:                                              ; preds = %366
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* %17, align 4
  %393 = add nsw i32 %392, %391
  store i32 %393, i32* %17, align 4
  br label %394

394:                                              ; preds = %390
  %395 = load i32, i32* %19, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %19, align 4
  br label %362

397:                                              ; preds = %362
  %398 = call i32 (...) @ADVANCE_BLOCK()
  br label %410

399:                                              ; preds = %148
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %401, align 8
  %403 = load i32, i32* @AV_LOG_ERROR, align 4
  %404 = load i32, i32* %21, align 4
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 0
  %407 = call i32 @bytestream2_get_bytes_left(i32* %406)
  %408 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_7__* %402, i32 %403, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %404, i32 %407)
  %409 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %409, i32* %2, align 4
  br label %412

410:                                              ; preds = %397, %349, %203, %162
  br label %119

411:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %412

412:                                              ; preds = %411, %399, %355, %298, %98, %87
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i32, ...) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @CHECK_BLOCK(...) #1

declare dso_local i32 @ADVANCE_BLOCK(...) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_get_be16u(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
