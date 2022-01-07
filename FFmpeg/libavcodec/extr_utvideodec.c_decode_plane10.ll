; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_decode_plane10.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_decode_plane10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_8__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot build Huffman codes\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Plane has more than one symbol yet a slice has a length of zero.\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@VLC_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Decoding error\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Slice decoding ran out of bits\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%d bits left after decoding slice\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32*, i32, i32, i32, i32*, i32*, i32)* @decode_plane10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_plane10(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_8__, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %36 = load i32*, i32** %18, align 8
  %37 = call i32 @build_huff10(i32* %36, %struct.TYPE_8__* %27, i32* %30)
  store i32 %37, i32* %24, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %9
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 (i32, i32, i8*, ...) @av_log(i32 %42, i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %24, align 4
  store i32 %45, i32* %10, align 4
  br label %286

46:                                               ; preds = %9
  %47 = load i32, i32* %30, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %115

49:                                               ; preds = %46
  store i32 0, i32* %26, align 4
  store i32 0, i32* %22, align 4
  br label %50

50:                                               ; preds = %111, %49
  %51 = load i32, i32* %22, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %50
  %57 = load i32, i32* %26, align 4
  store i32 %57, i32* %25, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %22, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %61, %64
  store i32 %65, i32* %26, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %25, align 4
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32* %71, i32** %31, align 8
  store i32 512, i32* %29, align 4
  %72 = load i32, i32* %25, align 4
  store i32 %72, i32* %21, align 4
  br label %73

73:                                               ; preds = %107, %56
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %26, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %73
  store i32 0, i32* %20, align 4
  br label %78

78:                                               ; preds = %99, %77
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32, i32* %30, align 4
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %29, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %29, align 4
  %90 = load i32, i32* %29, align 4
  %91 = and i32 %90, 1023
  store i32 %91, i32* %29, align 4
  %92 = load i32, i32* %29, align 4
  store i32 %92, i32* %23, align 4
  br label %93

93:                                               ; preds = %86, %82
  %94 = load i32, i32* %23, align 4
  %95 = load i32*, i32** %31, align 8
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %20, align 4
  br label %78

102:                                              ; preds = %78
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %31, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %31, align 8
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %73

110:                                              ; preds = %73
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  br label %50

114:                                              ; preds = %50
  store i32 0, i32* %10, align 4
  br label %286

115:                                              ; preds = %46
  store i32 0, i32* %26, align 4
  store i32 0, i32* %22, align 4
  br label %116

116:                                              ; preds = %278, %115
  %117 = load i32, i32* %22, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %281

122:                                              ; preds = %116
  %123 = load i32, i32* %26, align 4
  store i32 %123, i32* %25, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, 1
  %127 = mul nsw i32 %124, %126
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %127, %130
  store i32 %131, i32* %26, align 4
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  store i32* %137, i32** %32, align 8
  %138 = load i32, i32* %22, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %122
  %141 = load i32*, i32** %17, align 8
  %142 = load i32, i32* %22, align 4
  %143 = mul nsw i32 %142, 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = getelementptr inbounds i32, i32* %145, i64 -4
  %147 = call i32 @AV_RL32(i32* %146)
  br label %149

148:                                              ; preds = %122
  br label %149

149:                                              ; preds = %148, %140
  %150 = phi i32 [ %147, %140 ], [ 0, %148 ]
  store i32 %150, i32* %33, align 4
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %22, align 4
  %153 = mul nsw i32 %152, 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = call i32 @AV_RL32(i32* %155)
  store i32 %156, i32* %34, align 4
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %33, align 4
  %159 = sub nsw i32 %157, %158
  store i32 %159, i32* %35, align 4
  %160 = load i32, i32* %35, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %149
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AV_LOG_ERROR, align 4
  %167 = call i32 (i32, i32, i8*, ...) @av_log(i32 %165, i32 %166, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %283

168:                                              ; preds = %149
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %35, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %171, %173
  %175 = trunc i64 %174 to i32
  %176 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %177 = call i32 @memset(i32 %175, i32 0, i32 %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %180, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to i32*
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %33, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %192, 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  %196 = load i32, i32* %34, align 4
  %197 = load i32, i32* %33, align 4
  %198 = sub nsw i32 %196, %197
  %199 = add nsw i32 %198, 3
  %200 = ashr i32 %199, 2
  %201 = call i32 %181(i32* %185, i32* %195, i32 %200)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* %35, align 4
  %206 = mul nsw i32 %205, 8
  %207 = call i32 @init_get_bits(i32* %28, i64 %204, i32 %206)
  store i32 512, i32* %29, align 4
  %208 = load i32, i32* %25, align 4
  store i32 %208, i32* %21, align 4
  br label %209

209:                                              ; preds = %264, %168
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %26, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %267

213:                                              ; preds = %209
  store i32 0, i32* %20, align 4
  br label %214

214:                                              ; preds = %247, %213
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @VLC_BITS, align 4
  %222 = call i32 @get_vlc2(i32* %28, i32 %220, i32 %221, i32 3)
  store i32 %222, i32* %23, align 4
  %223 = load i32, i32* %23, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @AV_LOG_ERROR, align 4
  %230 = call i32 (i32, i32, i8*, ...) @av_log(i32 %228, i32 %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %283

231:                                              ; preds = %218
  %232 = load i32, i32* %19, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %29, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %29, align 4
  %238 = load i32, i32* %29, align 4
  %239 = and i32 %238, 1023
  store i32 %239, i32* %29, align 4
  %240 = load i32, i32* %29, align 4
  store i32 %240, i32* %23, align 4
  br label %241

241:                                              ; preds = %234, %231
  %242 = load i32, i32* %23, align 4
  %243 = load i32*, i32** %32, align 8
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %242, i32* %246, align 4
  br label %247

247:                                              ; preds = %241
  %248 = load i32, i32* %20, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %20, align 4
  br label %214

250:                                              ; preds = %214
  %251 = load i32, i32* %14, align 4
  %252 = load i32*, i32** %32, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %32, align 8
  %255 = call i32 @get_bits_left(i32* %28)
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %250
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @AV_LOG_ERROR, align 4
  %262 = call i32 (i32, i32, i8*, ...) @av_log(i32 %260, i32 %261, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %283

263:                                              ; preds = %250
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %21, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %21, align 4
  br label %209

267:                                              ; preds = %209
  %268 = call i32 @get_bits_left(i32* %28)
  %269 = icmp sgt i32 %268, 32
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @AV_LOG_WARNING, align 4
  %275 = call i32 @get_bits_left(i32* %28)
  %276 = call i32 (i32, i32, i8*, ...) @av_log(i32 %273, i32 %274, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %270, %267
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %22, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %22, align 4
  br label %116

281:                                              ; preds = %116
  %282 = call i32 @ff_free_vlc(%struct.TYPE_8__* %27)
  store i32 0, i32* %10, align 4
  br label %286

283:                                              ; preds = %257, %225, %162
  %284 = call i32 @ff_free_vlc(%struct.TYPE_8__* %27)
  %285 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %285, i32* %10, align 4
  br label %286

286:                                              ; preds = %283, %281, %114, %39
  %287 = load i32, i32* %10, align 4
  ret i32 %287
}

declare dso_local i32 @build_huff10(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @init_get_bits(i32*, i64, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @ff_free_vlc(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
