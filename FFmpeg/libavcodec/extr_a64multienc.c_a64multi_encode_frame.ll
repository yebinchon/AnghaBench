; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_a64multienc.c_a64multi_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_a64multienc.c_a64multi_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32*, i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@INTERLACED = common dso_local global i32 0, align 4
@CROP_SCREENS = common dso_local global i64 0, align 8
@C64YRES = common dso_local global i32 0, align 4
@C64XRES = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@CHARSET_CHARS = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @a64multi_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a64multi_encode_frame(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %10, align 8
  store i32* null, i32** %18, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %19, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %20, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %21, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %22, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %23, align 8
  %46 = load i32, i32* @INTERLACED, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 2048, %47
  store i32 %48, i32* %24, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 256, %51
  store i32 %52, i32* %25, align 4
  %53 = load i64, i64* @CROP_SCREENS, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @C64YRES, align 4
  %60 = call i32 @FFMIN(i32 %58, i32 %59)
  %61 = ashr i32 %60, 3
  store i32 %61, i32* %14, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @C64XRES, align 4
  %66 = call i32 @FFMIN(i32 %64, i32 %65)
  %67 = ashr i32 %66, 3
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %26, align 4
  br label %76

71:                                               ; preds = %4
  %72 = load i32, i32* @C64YRES, align 4
  %73 = ashr i32 %72, 3
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* @C64XRES, align 4
  %75 = ashr i32 %74, 3
  store i32 %75, i32* %15, align 4
  store i32 1024, i32* %26, align 4
  br label %76

76:                                               ; preds = %71, %55
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = icmp ne %struct.TYPE_14__* %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %346

85:                                               ; preds = %79
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 6
  store i32 0, i32* %92, align 4
  br label %99

93:                                               ; preds = %85
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %90
  br label %136

100:                                              ; preds = %76
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %100
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = load i32*, i32** %22, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 32000, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = call i32 @to_meta_with_crop(%struct.TYPE_15__* %109, %struct.TYPE_14__* %110, i32* %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %108
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 8
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %108
  store i32 0, i32* %5, align 4
  br label %346

135:                                              ; preds = %100
  br label %136

136:                                              ; preds = %135, %99
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %345

144:                                              ; preds = %136
  store i32 0, i32* %16, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %217

149:                                              ; preds = %144
  %150 = load i32, i32* %24, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %25, align 4
  %156 = add nsw i32 %154, %155
  %157 = mul nsw i32 %153, %156
  %158 = add nsw i32 %150, %157
  store i32 %158, i32* %27, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %161 = load i32, i32* %27, align 4
  %162 = call i32 @ff_alloc_packet2(%struct.TYPE_15__* %159, %struct.TYPE_13__* %160, i32 %161, i32 0)
  store i32 %162, i32* %17, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %149
  %165 = load i32, i32* %17, align 4
  store i32 %165, i32* %5, align 4
  br label %346

166:                                              ; preds = %149
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %18, align 8
  %170 = load i32*, i32** %22, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 1000, %173
  %175 = load i32*, i32** %23, align 8
  %176 = load i32, i32* @CHARSET_CHARS, align 4
  %177 = load i32*, i32** %19, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 9
  %180 = call i32 @avpriv_init_elbg(i32* %170, i32 32, i32 %174, i32* %175, i32 %176, i32 50, i32* %177, i32* %179)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %166
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %5, align 4
  br label %346

185:                                              ; preds = %166
  %186 = load i32*, i32** %22, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 1000, %189
  %191 = load i32*, i32** %23, align 8
  %192 = load i32, i32* @CHARSET_CHARS, align 4
  %193 = load i32*, i32** %19, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 9
  %196 = call i32 @avpriv_do_elbg(i32* %186, i32 32, i32 %190, i32* %191, i32 %192, i32 50, i32* %193, i32* %195)
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %185
  %200 = load i32, i32* %17, align 4
  store i32 %200, i32* %5, align 4
  br label %346

201:                                              ; preds = %185
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = load i32*, i32** %20, align 8
  %205 = call i32 @render_charset(%struct.TYPE_15__* %202, i32* %203, i32* %204)
  %206 = load i32*, i32** %18, align 8
  %207 = load i32*, i32** %21, align 8
  %208 = load i32, i32* %24, align 4
  %209 = call i32 @memcpy(i32* %206, i32* %207, i32 %208)
  %210 = load i32, i32* %24, align 4
  %211 = load i32*, i32** %18, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %18, align 8
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %16, align 4
  br label %217

217:                                              ; preds = %201, %144
  store i32 0, i32* %11, align 4
  br label %218

218:                                              ; preds = %286, %217
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %289

224:                                              ; preds = %218
  store i32 0, i32* %13, align 4
  br label %225

225:                                              ; preds = %256, %224
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %259

229:                                              ; preds = %225
  store i32 0, i32* %12, align 4
  br label %230

230:                                              ; preds = %252, %229
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %15, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %255

234:                                              ; preds = %230
  %235 = load i32*, i32** %19, align 8
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %15, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %235, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %18, align 8
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %15, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %244, i64 %250
  store i32 %243, i32* %251, align 4
  br label %252

252:                                              ; preds = %234
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %230

255:                                              ; preds = %230
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %225

259:                                              ; preds = %225
  %260 = load i32, i32* %26, align 4
  %261 = load i32*, i32** %18, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  store i32* %263, i32** %18, align 8
  %264 = load i32, i32* %26, align 4
  %265 = load i32, i32* %16, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %16, align 4
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %259
  %272 = load i32*, i32** %18, align 8
  %273 = load i32*, i32** %19, align 8
  %274 = load i32*, i32** %20, align 8
  %275 = call i32 @a64_compress_colram(i32* %272, i32* %273, i32* %274)
  %276 = load i32, i32* %25, align 4
  %277 = load i32*, i32** %18, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %18, align 8
  %280 = load i32, i32* %25, align 4
  %281 = load i32, i32* %16, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %16, align 4
  br label %283

283:                                              ; preds = %271, %259
  %284 = load i32*, i32** %19, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1000
  store i32* %285, i32** %19, align 8
  br label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %11, align 4
  br label %218

289:                                              ; preds = %218
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %292, 4
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @AV_WB32(i64 %293, i32 %296)
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %300, 8
  %302 = load i32, i32* %24, align 4
  %303 = call i32 @AV_WB32(i64 %301, i32 %302)
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %306, 12
  %308 = load i32, i32* %26, align 4
  %309 = load i32, i32* %25, align 4
  %310 = add nsw i32 %308, %309
  %311 = call i32 @AV_WB32(i64 %307, i32 %310)
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 7
  store i32 0, i32* %313, align 8
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 8
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 2
  store i64 %316, i64* %318, align 8
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 1
  store i64 %316, i64* %320, align 8
  %321 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 8
  store i64 %321, i64* %323, align 8
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %16, align 4
  %328 = icmp sge i32 %326, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @av_assert0(i32 %329)
  %331 = load i32, i32* %16, align 4
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 3
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  %339 = load i32, i32* %16, align 4
  %340 = icmp ne i32 %339, 0
  %341 = xor i1 %340, true
  %342 = xor i1 %341, true
  %343 = zext i1 %342 to i32
  %344 = load i32*, i32** %9, align 8
  store i32 %343, i32* %344, align 4
  br label %345

345:                                              ; preds = %289, %136
  store i32 0, i32* %5, align 4
  br label %346

346:                                              ; preds = %345, %199, %183, %164, %134, %84
  %347 = load i32, i32* %5, align 4
  ret i32 %347
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @to_meta_with_crop(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @avpriv_init_elbg(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @avpriv_do_elbg(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @render_charset(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @a64_compress_colram(i32*, i32*, i32*) #1

declare dso_local i32 @AV_WB32(i64, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
