; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ralf.c_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ralf.c_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32**, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Decoder's stomach is crying, it ate too many samples\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FILTER_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32*)* @decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @get_unary(i32* %25, i32 0, i32 6)
  %27 = sub nsw i32 12, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %28, 7
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = xor i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 1, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(%struct.TYPE_8__* %47, i32 %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %5, align 4
  br label %367

51:                                               ; preds = %33
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @get_bits(i32* %57, i32 2)
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 4
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp sge i32 %67, 2
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 2, i32 0
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 16, i32* %72, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 17, i32 16
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %133, %61
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @decode_channel(%struct.TYPE_7__* %86, i32* %87, i32 %88, i32 %89, i32 %93, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %367

102:                                              ; preds = %85
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @FILTER_RAW, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 3
  store i32 %117, i32* %115, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @apply_lpc(%struct.TYPE_7__* %118, i32 %119, i32 %120, i32 %124)
  br label %126

126:                                              ; preds = %113, %107, %102
  %127 = load i32*, i32** %7, align 8
  %128 = call i64 @get_bits_left(i32* %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %5, align 4
  br label %367

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %79

136:                                              ; preds = %79
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %17, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  %146 = load i32*, i32** %145, align 8
  store i32* %146, i32** %18, align 8
  %147 = load i32, i32* %14, align 4
  switch i32 %147, label %360 [
    i32 0, label %148
    i32 1, label %173
    i32 2, label %213
    i32 3, label %264
    i32 4, label %308
  ]

148:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %169, %148
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %149
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %153
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %19, align 4
  br label %149

172:                                              ; preds = %149
  br label %360

173:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  br label %174

174:                                              ; preds = %209, %173
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %174
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %183, %188
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %19, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  %194 = load i32*, i32** %18, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %198, %203
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  br label %209

209:                                              ; preds = %178
  %210 = load i32, i32* %19, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %19, align 4
  br label %174

212:                                              ; preds = %174
  br label %360

213:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  br label %214

214:                                              ; preds = %260, %213
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %263

218:                                              ; preds = %214
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 5
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %17, align 8
  %225 = load i32, i32* %19, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, %223
  store i32 %229, i32* %227, align 4
  %230 = load i32*, i32** %17, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = load i32, i32* %19, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %234, i32* %238, align 4
  %239 = load i32*, i32** %17, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %18, align 8
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 5
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %248, %253
  %255 = sub nsw i32 %243, %254
  %256 = load i32*, i32** %9, align 8
  %257 = load i32, i32* %19, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %255, i32* %259, align 4
  br label %260

260:                                              ; preds = %218
  %261 = load i32, i32* %19, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %19, align 4
  br label %214

263:                                              ; preds = %214
  br label %360

264:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  br label %265

265:                                              ; preds = %304, %264
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %11, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %307

269:                                              ; preds = %265
  %270 = load i32*, i32** %17, align 8
  %271 = load i32, i32* %19, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 5
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %274, %279
  store i32 %280, i32* %20, align 4
  %281 = load i32*, i32** %18, align 8
  %282 = load i32, i32* %19, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 5
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %285, %290
  store i32 %291, i32* %21, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %21, align 4
  %294 = add nsw i32 %292, %293
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* %19, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %294, i32* %298, align 4
  %299 = load i32, i32* %20, align 4
  %300 = load i32*, i32** %9, align 8
  %301 = load i32, i32* %19, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %299, i32* %303, align 4
  br label %304

304:                                              ; preds = %269
  %305 = load i32, i32* %19, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %19, align 4
  br label %265

307:                                              ; preds = %265
  br label %360

308:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  br label %309

309:                                              ; preds = %356, %308
  %310 = load i32, i32* %19, align 4
  %311 = load i32, i32* %11, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %359

313:                                              ; preds = %309
  %314 = load i32*, i32** %18, align 8
  %315 = load i32, i32* %19, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 5
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %318, %323
  store i32 %324, i32* %20, align 4
  %325 = load i32*, i32** %17, align 8
  %326 = load i32, i32* %19, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 5
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %329, %334
  %336 = shl i32 %335, 1
  %337 = load i32, i32* %20, align 4
  %338 = and i32 %337, 1
  %339 = or i32 %336, %338
  store i32 %339, i32* %21, align 4
  %340 = load i32, i32* %21, align 4
  %341 = load i32, i32* %20, align 4
  %342 = add nsw i32 %340, %341
  %343 = sdiv i32 %342, 2
  %344 = load i32*, i32** %8, align 8
  %345 = load i32, i32* %19, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  store i32 %343, i32* %347, align 4
  %348 = load i32, i32* %21, align 4
  %349 = load i32, i32* %20, align 4
  %350 = sub nsw i32 %348, %349
  %351 = sdiv i32 %350, 2
  %352 = load i32*, i32** %9, align 8
  %353 = load i32, i32* %19, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 %351, i32* %355, align 4
  br label %356

356:                                              ; preds = %313
  %357 = load i32, i32* %19, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %19, align 4
  br label %309

359:                                              ; preds = %309
  br label %360

360:                                              ; preds = %136, %359, %307, %263, %212, %172
  %361 = load i32, i32* %11, align 4
  %362 = sext i32 %361 to i64
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %365, %362
  store i64 %366, i64* %364, align 8
  store i32 0, i32* %5, align 4
  br label %367

367:                                              ; preds = %360, %130, %100, %46
  %368 = load i32, i32* %5, align 4
  ret i32 %368
}

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_channel(%struct.TYPE_7__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @apply_lpc(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
