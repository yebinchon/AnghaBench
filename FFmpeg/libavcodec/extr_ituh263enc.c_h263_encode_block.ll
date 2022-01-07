; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_h263_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_h263_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32**, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, %struct.TYPE_8__, i64, i64, i64 }
%struct.TYPE_8__ = type { i32* }

@ff_h263_rl_inter = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ff_rl_intra_aic = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@wrong_run = common dso_local global i64* null, align 8
@CONFIG_FLV_ENCODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32)* @h263_encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h263_encode_block(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
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
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_9__* @ff_h263_rl_inter, %struct.TYPE_9__** %17, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 254
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  store i32 254, i32* %7, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 254, i32* %39, align 4
  br label %47

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = call i32 @put_bits(i32* %52, i32 8, i32 255)
  br label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @put_bits(i32* %56, i32 8, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  store i32 1, i32* %10, align 4
  br label %202

60:                                               ; preds = %26, %3
  store i32 0, i32* %10, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store %struct.TYPE_9__* @ff_rl_intra_aic, %struct.TYPE_9__** %17, align 8
  br label %71

71:                                               ; preds = %70, %65, %60
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %201

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %201, label %81

81:                                               ; preds = %76
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %189, %81
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %192

95:                                               ; preds = %91
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %188

111:                                              ; preds = %95
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %122, %111
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @get_rl_index(%struct.TYPE_9__* %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @get_rl_index(%struct.TYPE_9__* @ff_rl_intra_aic, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %21, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %19, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %19, align 4
  %147 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ff_rl_intra_aic, i32 0, i32 0), align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %125
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 14
  store i32 %164, i32* %19, align 4
  br label %165

165:                                              ; preds = %162, %125
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ff_rl_intra_aic, i32 0, i32 1), align 8
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 14
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  %174 = load i32, i32* %20, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %20, align 4
  br label %186

176:                                              ; preds = %165
  %177 = load i64*, i64** @wrong_run, align 8
  %178 = load i32, i32* %21, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %20, align 4
  br label %186

186:                                              ; preds = %176, %169
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %186, %95
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %91

192:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %19, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i32, i32* %20, align 4
  %198 = icmp sgt i32 %197, 63
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store %struct.TYPE_9__* @ff_rl_intra_aic, %struct.TYPE_9__** %17, align 8
  br label %200

200:                                              ; preds = %199, %196, %192
  br label %201

201:                                              ; preds = %200, %76, %71
  br label %202

202:                                              ; preds = %201, %59
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %10, align 4
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %212

212:                                              ; preds = %338, %202
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp sle i32 %213, %214
  br i1 %215, label %216, label %341

216:                                              ; preds = %212
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %11, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %337

232:                                              ; preds = %216
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %13, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %232
  store i32 1, i32* %14, align 4
  %245 = load i32, i32* %7, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %7, align 4
  br label %247

247:                                              ; preds = %244, %232
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @get_rl_index(%struct.TYPE_9__* %248, i32 %249, i32 %250, i32 %251)
  store i32 %252, i32* %16, align 4
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %16, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32, i32* %16, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @put_bits(i32* %254, i32 %263, i32 %272)
  %274 = load i32, i32* %16, align 4
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %274, %277
  br i1 %278, label %279, label %330

279:                                              ; preds = %247
  %280 = load i32, i32* @CONFIG_FLV_ENCODER, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = icmp sle i32 %285, 1
  br i1 %286, label %287, label %321

287:                                              ; preds = %282, %279
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @put_bits(i32* %289, i32 1, i32 %290)
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @put_bits(i32* %293, i32 6, i32 %294)
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  %298 = zext i1 %297 to i32
  %299 = call i32 @av_assert2(i32 %298)
  %300 = load i32, i32* %7, align 4
  %301 = icmp slt i32 %300, 128
  br i1 %301, label %302, label %307

302:                                              ; preds = %287
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @put_sbits(i32* %304, i32 8, i32 %305)
  br label %320

307:                                              ; preds = %287
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 2
  %310 = call i32 @put_bits(i32* %309, i32 8, i32 128)
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 2
  %313 = load i32, i32* %15, align 4
  %314 = call i32 @put_sbits(i32* %312, i32 5, i32 %313)
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 2
  %317 = load i32, i32* %15, align 4
  %318 = ashr i32 %317, 5
  %319 = call i32 @put_sbits(i32* %316, i32 6, i32 %318)
  br label %320

320:                                              ; preds = %307, %302
  br label %329

321:                                              ; preds = %282
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 2
  %324 = load i32, i32* %15, align 4
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @ff_flv2_encode_ac_esc(i32* %323, i32 %324, i32 %325, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %321, %320
  br label %335

330:                                              ; preds = %247
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 2
  %333 = load i32, i32* %14, align 4
  %334 = call i32 @put_bits(i32* %332, i32 1, i32 %333)
  br label %335

335:                                              ; preds = %330, %329
  %336 = load i32, i32* %10, align 4
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %335, %216
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %10, align 4
  br label %212

341:                                              ; preds = %212
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @get_rl_index(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

declare dso_local i32 @ff_flv2_encode_ac_esc(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
