; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_mp_decode_layer1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_mp_decode_layer1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32***, i32 }

@MPA_MAX_CHANNELS = common dso_local global i32 0, align 4
@SBLIMIT = common dso_local global i32 0, align 4
@MPA_JSTEREO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mp_decode_layer1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_decode_layer1(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %15 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @SBLIMIT, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = mul nuw i64 %16, %18
  %21 = alloca i32, i64 %20, align 16
  store i64 %16, i64* %11, align 8
  store i64 %18, i64* %12, align 8
  %22 = load i32, i32* @MPA_MAX_CHANNELS, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* @SBLIMIT, align 4
  %25 = zext i32 %24 to i64
  %26 = mul nuw i64 %23, %25
  %27 = alloca i32, i64 %26, align 16
  store i64 %23, i64* %13, align 8
  store i64 %25, i64* %14, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MPA_JSTEREO, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 %37, 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @SBLIMIT, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %33
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = call i32 @get_bits(i32* %55, i32 4)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %58, %18
  %60 = getelementptr inbounds i32, i32* %21, i64 %59
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %47

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load i32, i32* %3, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %86, %71
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @SBLIMIT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = call i32 @get_bits(i32* %79, i32 4)
  %81 = mul nsw i64 0, %18
  %82 = getelementptr inbounds i32, i32* %21, i64 %81
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %73

89:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %127, %89
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %90
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %123, %94
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, %18
  %105 = getelementptr inbounds i32, i32* %21, i64 %104
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %101
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = call i32 @get_bits(i32* %113, i32 6)
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, %25
  %118 = getelementptr inbounds i32, i32* %27, i64 %117
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %114, i32* %121, align 4
  br label %122

122:                                              ; preds = %111, %101
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %95

126:                                              ; preds = %95
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %90

130:                                              ; preds = %90
  %131 = load i32, i32* %3, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %162, %130
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @SBLIMIT, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %165

136:                                              ; preds = %132
  %137 = mul nsw i64 0, %18
  %138 = getelementptr inbounds i32, i32* %21, i64 %137
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %136
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  %147 = call i32 @get_bits(i32* %146, i32 6)
  %148 = mul nsw i64 0, %25
  %149 = getelementptr inbounds i32, i32* %27, i64 %148
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 4
  %155 = call i32 @get_bits(i32* %154, i32 6)
  %156 = mul nsw i64 1, %25
  %157 = getelementptr inbounds i32, i32* %27, i64 %156
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %155, i32* %160, align 4
  br label %161

161:                                              ; preds = %144, %136
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %132

165:                                              ; preds = %132
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %328, %165
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 12
  br i1 %168, label %169, label %331

169:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %230, %169
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %3, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %233

174:                                              ; preds = %170
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %226, %174
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %229

181:                                              ; preds = %175
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = mul nsw i64 %183, %18
  %185 = getelementptr inbounds i32, i32* %21, i64 %184
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %209

192:                                              ; preds = %181
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 4
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  %197 = call i32 @get_bits(i32* %194, i32 %196)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = mul nsw i64 %201, %25
  %203 = getelementptr inbounds i32, i32* %27, i64 %202
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @l1_unscale(i32 %198, i32 %199, i32 %207)
  store i32 %208, i32* %5, align 4
  br label %210

209:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %209, %192
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 3
  %214 = load i32***, i32**** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32**, i32*** %214, i64 %216
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %211, i32* %225, align 4
  br label %226

226:                                              ; preds = %210
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %175

229:                                              ; preds = %175
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %4, align 4
  br label %170

233:                                              ; preds = %170
  %234 = load i32, i32* %3, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %324, %233
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @SBLIMIT, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %327

239:                                              ; preds = %235
  %240 = mul nsw i64 0, %18
  %241 = getelementptr inbounds i32, i32* %21, i64 %240
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %298

248:                                              ; preds = %239
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 4
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  %253 = call i32 @get_bits(i32* %250, i32 %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* %9, align 4
  %256 = mul nsw i64 0, %25
  %257 = getelementptr inbounds i32, i32* %27, i64 %256
  %258 = load i32, i32* %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @l1_unscale(i32 %254, i32 %255, i32 %261)
  store i32 %262, i32* %5, align 4
  %263 = load i32, i32* %5, align 4
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 3
  %266 = load i32***, i32**** %265, align 8
  %267 = getelementptr inbounds i32**, i32*** %266, i64 0
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %263, i32* %275, align 4
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* %9, align 4
  %278 = mul nsw i64 1, %25
  %279 = getelementptr inbounds i32, i32* %27, i64 %278
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @l1_unscale(i32 %276, i32 %277, i32 %283)
  store i32 %284, i32* %5, align 4
  %285 = load i32, i32* %5, align 4
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 3
  %288 = load i32***, i32**** %287, align 8
  %289 = getelementptr inbounds i32**, i32*** %288, i64 1
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %285, i32* %297, align 4
  br label %323

298:                                              ; preds = %239
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 3
  %301 = load i32***, i32**** %300, align 8
  %302 = getelementptr inbounds i32**, i32*** %301, i64 0
  %303 = load i32**, i32*** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32*, i32** %303, i64 %305
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %4, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 0, i32* %310, align 4
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 3
  %313 = load i32***, i32**** %312, align 8
  %314 = getelementptr inbounds i32**, i32*** %313, i64 1
  %315 = load i32**, i32*** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32*, i32** %315, i64 %317
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %4, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 0, i32* %322, align 4
  br label %323

323:                                              ; preds = %298, %248
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %4, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %4, align 4
  br label %235

327:                                              ; preds = %235
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %8, align 4
  br label %166

331:                                              ; preds = %166
  %332 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %332)
  ret i32 12
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @l1_unscale(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
