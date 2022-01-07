; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_scroll_down.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_scroll_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i8, i64, i8, i64)* }
%struct.TYPE_3__ = type { i64 }

@gc_buffer_size = common dso_local global i32 0, align 4
@gc_buffer_rows = common dso_local global i32 0, align 4
@gc_color_code = common dso_local global i8 0, align 1
@gc_buffer_columns = common dso_local global i32 0, align 4
@gc_buffer_attributes = common dso_local global i64* null, align 8
@gc_buffer_characters = common dso_local global i8* null, align 8
@gc_buffer_colorcodes = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@gc_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ATTR_NONE = common dso_local global i64 0, align 8
@vinfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @gc_scroll_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_scroll_down(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @gc_buffer_size, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %361

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @gc_buffer_rows, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %346

19:                                               ; preds = %15
  %20 = load i8, i8* @gc_color_code, align 1
  store i8 %20, i8* %7, align 1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @gc_buffer_columns, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %226, %19
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %28, %29
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %229

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @gc_buffer_columns, align 4
  %35 = mul i32 %33, %34
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %220, %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @gc_buffer_columns, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %225

40:                                               ; preds = %36
  %41 = load i64*, i64** @gc_buffer_attributes, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** @gc_buffer_attributes, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %45, %52
  br i1 %53, label %86, label %54

54:                                               ; preds = %40
  %55 = load i8*, i8** @gc_buffer_characters, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8*, i8** @gc_buffer_characters, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %60, %68
  br i1 %69, label %86, label %70

70:                                               ; preds = %54
  %71 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %76, %84
  br i1 %85, label %86, label %219

86:                                               ; preds = %70, %54, %40
  %87 = load i8, i8* @gc_color_code, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub i32 %90, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %88, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %86
  %99 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @COLOR_CODE_GET(i8 zeroext %105, i32 %106)
  %108 = load i32, i32* @TRUE, align 4
  %109 = call i32 @gc_update_color(i32 %107, i32 %108)
  %110 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub i32 %111, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i32, i32* @FALSE, align 4
  %118 = call i32 @COLOR_CODE_GET(i8 zeroext %116, i32 %117)
  %119 = load i32, i32* @FALSE, align 4
  %120 = call i32 @gc_update_color(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %98, %86
  %122 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = sub i32 %129, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %127, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %121
  %138 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 1), align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i8*, i8** @gc_buffer_characters, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = sub i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i64*, i64** @gc_buffer_attributes, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sub i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %148, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i32 %138(i32 %139, i32 %140, i8 signext %147, i64 %154, i8 signext 0, i64 0)
  br label %185

156:                                              ; preds = %121
  %157 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 1), align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i8*, i8** @gc_buffer_characters, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sub i32 %161, %162
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %160, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i64*, i64** @gc_buffer_attributes, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = sub i32 %168, %169
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %167, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i8*, i8** @gc_buffer_characters, align 8
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = load i64*, i64** @gc_buffer_attributes, align 8
  %180 = load i32, i32* %10, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i32 %157(i32 %158, i32 %159, i8 signext %166, i64 %173, i8 signext %178, i64 %183)
  br label %185

185:                                              ; preds = %156, %137
  %186 = load i64*, i64** @gc_buffer_attributes, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = sub i32 %187, %188
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %186, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** @gc_buffer_attributes, align 8
  %194 = load i32, i32* %10, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  store i64 %192, i64* %196, align 8
  %197 = load i8*, i8** @gc_buffer_characters, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = sub i32 %198, %199
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = load i8*, i8** @gc_buffer_characters, align 8
  %205 = load i32, i32* %10, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 %203, i8* %207, align 1
  %208 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %11, align 4
  %211 = sub i32 %209, %210
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %208, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %216 = load i32, i32* %10, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  store i8 %214, i8* %218, align 1
  br label %219

219:                                              ; preds = %185, %70
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %10, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %8, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %36

225:                                              ; preds = %36
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %9, align 4
  %228 = add i32 %227, -1
  store i32 %228, i32* %9, align 4
  br label %26

229:                                              ; preds = %26
  %230 = load i8, i8* %7, align 1
  %231 = zext i8 %230 to i32
  %232 = load i8, i8* @gc_color_code, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp ne i32 %231, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %229
  %236 = load i8, i8* %7, align 1
  %237 = load i32, i32* @TRUE, align 4
  %238 = call i32 @COLOR_CODE_GET(i8 zeroext %236, i32 %237)
  %239 = load i32, i32* @TRUE, align 4
  %240 = call i32 @gc_update_color(i32 %238, i32 %239)
  %241 = load i8, i8* %7, align 1
  %242 = load i32, i32* @FALSE, align 4
  %243 = call i32 @COLOR_CODE_GET(i8 zeroext %241, i32 %242)
  %244 = load i32, i32* @FALSE, align 4
  %245 = call i32 @gc_update_color(i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %235, %229
  %247 = load i32, i32* %5, align 4
  store i32 %247, i32* %9, align 4
  br label %248

248:                                              ; preds = %342, %246
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %4, align 4
  %252 = add i32 %250, %251
  %253 = icmp ult i32 %249, %252
  br i1 %253, label %254, label %345

254:                                              ; preds = %248
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @gc_buffer_columns, align 4
  %257 = mul i32 %255, %256
  store i32 %257, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %258

258:                                              ; preds = %336, %254
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @gc_buffer_columns, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %341

262:                                              ; preds = %258
  %263 = load i64*, i64** @gc_buffer_attributes, align 8
  %264 = load i32, i32* %10, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @ATTR_NONE, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %288, label %270

270:                                              ; preds = %262
  %271 = load i8*, i8** @gc_buffer_characters, align 8
  %272 = load i32, i32* %10, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %271, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp ne i32 %276, 32
  br i1 %277, label %288, label %278

278:                                              ; preds = %270
  %279 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %280 = load i32, i32* %10, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = load i8, i8* @gc_color_code, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp ne i32 %284, %286
  br i1 %287, label %288, label %335

288:                                              ; preds = %278, %270, %262
  %289 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %290 = load i32, i32* %10, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = load i8, i8* @gc_color_code, align 1
  %296 = zext i8 %295 to i32
  %297 = icmp ne i32 %294, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %288
  %299 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 1), align 8
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* %9, align 4
  %302 = load i64, i64* @ATTR_NONE, align 8
  %303 = call i32 %299(i32 %300, i32 %301, i8 signext 32, i64 %302, i8 signext 0, i64 0)
  br label %320

304:                                              ; preds = %288
  %305 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 1), align 8
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load i64, i64* @ATTR_NONE, align 8
  %309 = load i8*, i8** @gc_buffer_characters, align 8
  %310 = load i32, i32* %10, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = load i8, i8* %312, align 1
  %314 = load i64*, i64** @gc_buffer_attributes, align 8
  %315 = load i32, i32* %10, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = call i32 %305(i32 %306, i32 %307, i8 signext 32, i64 %308, i8 signext %313, i64 %318)
  br label %320

320:                                              ; preds = %304, %298
  %321 = load i64, i64* @ATTR_NONE, align 8
  %322 = load i64*, i64** @gc_buffer_attributes, align 8
  %323 = load i32, i32* %10, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  store i64 %321, i64* %325, align 8
  %326 = load i8*, i8** @gc_buffer_characters, align 8
  %327 = load i32, i32* %10, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  store i8 32, i8* %329, align 1
  %330 = load i8, i8* @gc_color_code, align 1
  %331 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %332 = load i32, i32* %10, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  store i8 %330, i8* %334, align 1
  br label %335

335:                                              ; preds = %320, %278
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %10, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %10, align 4
  %339 = load i32, i32* %8, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %8, align 4
  br label %258

341:                                              ; preds = %258
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %9, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %248

345:                                              ; preds = %248
  br label %361

346:                                              ; preds = %15
  %347 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 0), align 8
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* %6, align 4
  %351 = call i32 %347(i32 %348, i32 %349, i32 %350)
  %352 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vinfo, i32 0, i32 0), align 8
  %353 = sub nsw i64 %352, 1
  %354 = load i32, i32* %5, align 4
  %355 = load i32, i32* %4, align 4
  %356 = add i32 %354, %355
  %357 = sub i32 %356, 1
  %358 = load i32, i32* %5, align 4
  %359 = load i32, i32* %6, align 4
  %360 = call i32 @gc_clear_screen(i64 %353, i32 %357, i32 %358, i32 %359, i32 1)
  br label %361

361:                                              ; preds = %14, %346, %345
  ret void
}

declare dso_local i32 @gc_update_color(i32, i32) #1

declare dso_local i32 @COLOR_CODE_GET(i8 zeroext, i32) #1

declare dso_local i32 @gc_clear_screen(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
