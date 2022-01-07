; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alacenc.c_write_element.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alacenc.c_write_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32**, i32**, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__*, i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@TYPE_CPE = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, i32, i32*, i32*)* @write_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_element(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32*], align 16
  %19 = alloca [2 x i32*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 1
  %27 = load i32*, i32** %10, align 8
  store i32* %27, i32** %26, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 11
  store i32* %29, i32** %16, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TYPE_CPE, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  store i32 %34, i32* %14, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %140

39:                                               ; preds = %5
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @write_element_header(%struct.TYPE_15__* %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_SAMPLE_FMT_S32P, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %39
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 32, %56
  store i32 %57, i32* %17, align 4
  %58 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %59 = load i32*, i32** %9, align 8
  store i32* %59, i32** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 1
  %61 = load i32*, i32** %10, align 8
  store i32* %61, i32** %60, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %95, %51
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load i32*, i32** %16, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %17, align 4
  %89 = ashr i32 %87, %88
  %90 = call i32 @put_sbits(i32* %74, i32 %79, i32 %89)
  br label %91

91:                                               ; preds = %73
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %69

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %62

98:                                               ; preds = %62
  br label %139

99:                                               ; preds = %39
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 0
  %101 = load i32*, i32** %9, align 8
  store i32* %101, i32** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 1
  %103 = load i32*, i32** %10, align 8
  store i32* %103, i32** %102, align 8
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %135, %99
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %104
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %131, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load i32*, i32** %16, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x i32*], [2 x i32*]* %19, i64 0, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @put_sbits(i32* %116, i32 %121, i32 %129)
  br label %131

131:                                              ; preds = %115
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %111

134:                                              ; preds = %111
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %104

138:                                              ; preds = %104
  br label %139

139:                                              ; preds = %138, %98
  br label %413

140:                                              ; preds = %5
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %149, %150
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 9
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = load i32, i32* %14, align 4
  %158 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %159 = call i32 @init_sample_buffers(%struct.TYPE_15__* %156, i32 %157, i32** %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @write_element_header(%struct.TYPE_15__* %160, i32 %161, i32 %162)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %228

168:                                              ; preds = %140
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 1, %171
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %224, %168
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %227

178:                                              ; preds = %174
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  store i32* %185, i32** %21, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 3
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %22, align 8
  store i32 0, i32* %12, align 4
  br label %193

193:                                              ; preds = %220, %178
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %193
  %200 = load i32*, i32** %22, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %20, align 4
  %206 = and i32 %204, %205
  %207 = load i32*, i32** %21, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %22, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, %213
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %199
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %193

223:                                              ; preds = %193
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %174

227:                                              ; preds = %174
  br label %228

228:                                              ; preds = %227, %140
  %229 = load i32, i32* %14, align 4
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %233 = call i32 @alac_stereo_decorrelation(%struct.TYPE_15__* %232)
  br label %239

234:                                              ; preds = %228
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 5
  store i32 0, i32* %236, align 4
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 4
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %234, %231
  %240 = load i32*, i32** %16, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @put_bits(i32* %240, i32 8, i32 %243)
  %245 = load i32*, i32** %16, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @put_bits(i32* %245, i32 8, i32 %248)
  store i32 0, i32* %12, align 4
  br label %250

250:                                              ; preds = %317, %239
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %320

254:                                              ; preds = %250
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %256 = load i32, i32* %12, align 4
  %257 = call i32 @calc_predictor_params(%struct.TYPE_15__* %255, i32 %256)
  %258 = load i32*, i32** %16, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @put_bits(i32* %258, i32 4, i32 %259)
  %261 = load i32*, i32** %16, align 8
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 6
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @put_bits(i32* %261, i32 4, i32 %269)
  %271 = load i32*, i32** %16, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @put_bits(i32* %271, i32 3, i32 %275)
  %277 = load i32*, i32** %16, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @put_bits(i32* %277, i32 5, i32 %285)
  store i32 0, i32* %13, align 4
  br label %287

287:                                              ; preds = %313, %254
  %288 = load i32, i32* %13, align 4
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp slt i32 %288, %296
  br i1 %297, label %298, label %316

298:                                              ; preds = %287
  %299 = load i32*, i32** %16, align 8
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 6
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %301, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @put_sbits(i32* %299, i32 16, i32 %311)
  br label %313

313:                                              ; preds = %298
  %314 = load i32, i32* %13, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %13, align 4
  br label %287

316:                                              ; preds = %287
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %12, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %12, align 4
  br label %250

320:                                              ; preds = %250
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %362

325:                                              ; preds = %320
  store i32 0, i32* %12, align 4
  br label %326

326:                                              ; preds = %358, %325
  %327 = load i32, i32* %12, align 4
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %361

332:                                              ; preds = %326
  store i32 0, i32* %13, align 4
  br label %333

333:                                              ; preds = %354, %332
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %14, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %357

337:                                              ; preds = %333
  %338 = load i32*, i32** %16, align 8
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 2
  %344 = load i32**, i32*** %343, align 8
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32*, i32** %344, i64 %346
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %12, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @put_bits(i32* %338, i32 %341, i32 %352)
  br label %354

354:                                              ; preds = %337
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %13, align 4
  br label %333

357:                                              ; preds = %333
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %12, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %12, align 4
  br label %326

361:                                              ; preds = %326
  br label %362

362:                                              ; preds = %361, %320
  store i32 0, i32* %12, align 4
  br label %363

363:                                              ; preds = %409, %362
  %364 = load i32, i32* %12, align 4
  %365 = load i32, i32* %14, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %412

367:                                              ; preds = %363
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %369 = load i32, i32* %12, align 4
  %370 = call i32 @alac_linear_predictor(%struct.TYPE_15__* %368, i32 %369)
  %371 = load i32, i32* %15, align 4
  %372 = icmp eq i32 %371, 15
  br i1 %372, label %373, label %405

373:                                              ; preds = %367
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 2
  %376 = load i32**, i32*** %375, align 8
  %377 = load i32, i32* %12, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32*, i32** %376, i64 %378
  %380 = load i32*, i32** %379, align 8
  store i32* %380, i32** %23, align 8
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sub nsw i32 %383, 1
  store i32 %384, i32* %13, align 4
  br label %385

385:                                              ; preds = %401, %373
  %386 = load i32, i32* %13, align 4
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %404

388:                                              ; preds = %385
  %389 = load i32*, i32** %23, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load i32*, i32** %23, align 8
  %396 = load i32, i32* %13, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = sub nsw i32 %399, %394
  store i32 %400, i32* %398, align 4
  br label %401

401:                                              ; preds = %388
  %402 = load i32, i32* %13, align 4
  %403 = add nsw i32 %402, -1
  store i32 %403, i32* %13, align 4
  br label %385

404:                                              ; preds = %385
  br label %405

405:                                              ; preds = %404, %367
  %406 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %407 = load i32, i32* %12, align 4
  %408 = call i32 @alac_entropy_coder(%struct.TYPE_15__* %406, i32 %407)
  br label %409

409:                                              ; preds = %405
  %410 = load i32, i32* %12, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %12, align 4
  br label %363

412:                                              ; preds = %363
  br label %413

413:                                              ; preds = %412, %139
  ret void
}

declare dso_local i32 @write_element_header(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

declare dso_local i32 @init_sample_buffers(%struct.TYPE_15__*, i32, i32**) #1

declare dso_local i32 @alac_stereo_decorrelation(%struct.TYPE_15__*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @calc_predictor_params(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @alac_linear_predictor(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @alac_entropy_coder(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
