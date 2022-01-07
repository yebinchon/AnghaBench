; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_scroll_up.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_scroll_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i8, i64, i8, i64)* }

@gc_buffer_size = common dso_local global i32 0, align 4
@gc_buffer_rows = common dso_local global i32 0, align 4
@gc_color_code = common dso_local global i8 0, align 1
@gc_buffer_columns = common dso_local global i32 0, align 4
@gc_buffer_attributes = common dso_local global i64* null, align 8
@gc_buffer_characters = common dso_local global i8* null, align 8
@gc_buffer_colorcodes = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@gc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ATTR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @gc_scroll_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_scroll_up(i32 %0, i32 %1, i32 %2) #0 {
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
  br label %357

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @gc_buffer_rows, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %345

19:                                               ; preds = %15
  %20 = load i8, i8* @gc_color_code, align 1
  store i8 %20, i8* %7, align 1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @gc_buffer_columns, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %225, %19
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub i32 %27, %28
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %228

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @gc_buffer_columns, align 4
  %34 = mul i32 %32, %33
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %219, %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @gc_buffer_columns, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %224

39:                                               ; preds = %35
  %40 = load i64*, i64** @gc_buffer_attributes, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @gc_buffer_attributes, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %44, %51
  br i1 %52, label %85, label %53

53:                                               ; preds = %39
  %54 = load i8*, i8** @gc_buffer_characters, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8*, i8** @gc_buffer_characters, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %59, %67
  br i1 %68, label %85, label %69

69:                                               ; preds = %53
  %70 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %75, %83
  br i1 %84, label %85, label %218

85:                                               ; preds = %69, %53, %39
  %86 = load i8, i8* @gc_color_code, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %87, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %85
  %98 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @COLOR_CODE_GET(i8 zeroext %104, i32 %105)
  %107 = load i32, i32* @TRUE, align 4
  %108 = call i32 @gc_update_color(i32 %106, i32 %107)
  %109 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %110, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i32, i32* @FALSE, align 4
  %117 = call i32 @COLOR_CODE_GET(i8 zeroext %115, i32 %116)
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i32 @gc_update_color(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %97, %85
  %121 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add i32 %128, %129
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %127, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %126, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %120
  %137 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 1), align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i8*, i8** @gc_buffer_characters, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %141, %142
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = load i64*, i64** @gc_buffer_attributes, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %147, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = call i32 %137(i32 %138, i32 %139, i8 signext %146, i64 %153, i8 signext 0, i64 0)
  br label %184

155:                                              ; preds = %120
  %156 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 1), align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i8*, i8** @gc_buffer_characters, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %159, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = load i64*, i64** @gc_buffer_attributes, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add i32 %167, %168
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %166, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i8*, i8** @gc_buffer_characters, align 8
  %174 = load i32, i32* %10, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = load i64*, i64** @gc_buffer_attributes, align 8
  %179 = load i32, i32* %10, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i32 %156(i32 %157, i32 %158, i8 signext %165, i64 %172, i8 signext %177, i64 %182)
  br label %184

184:                                              ; preds = %155, %136
  %185 = load i64*, i64** @gc_buffer_attributes, align 8
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = add i32 %186, %187
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %185, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load i64*, i64** @gc_buffer_attributes, align 8
  %193 = load i32, i32* %10, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 %191, i64* %195, align 8
  %196 = load i8*, i8** @gc_buffer_characters, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = add i32 %197, %198
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** @gc_buffer_characters, align 8
  %204 = load i32, i32* %10, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  store i8 %202, i8* %206, align 1
  %207 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = add i32 %208, %209
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %207, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %215 = load i32, i32* %10, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 %213, i8* %217, align 1
  br label %218

218:                                              ; preds = %184, %69
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %10, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %8, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %35

224:                                              ; preds = %35
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %9, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %25

228:                                              ; preds = %25
  %229 = load i8, i8* %7, align 1
  %230 = zext i8 %229 to i32
  %231 = load i8, i8* @gc_color_code, align 1
  %232 = zext i8 %231 to i32
  %233 = icmp ne i32 %230, %232
  br i1 %233, label %234, label %245

234:                                              ; preds = %228
  %235 = load i8, i8* %7, align 1
  %236 = load i32, i32* @TRUE, align 4
  %237 = call i32 @COLOR_CODE_GET(i8 zeroext %235, i32 %236)
  %238 = load i32, i32* @TRUE, align 4
  %239 = call i32 @gc_update_color(i32 %237, i32 %238)
  %240 = load i8, i8* %7, align 1
  %241 = load i32, i32* @FALSE, align 4
  %242 = call i32 @COLOR_CODE_GET(i8 zeroext %240, i32 %241)
  %243 = load i32, i32* @FALSE, align 4
  %244 = call i32 @gc_update_color(i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %234, %228
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %4, align 4
  %248 = sub i32 %246, %247
  store i32 %248, i32* %9, align 4
  br label %249

249:                                              ; preds = %341, %245
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %6, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %344

253:                                              ; preds = %249
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @gc_buffer_columns, align 4
  %256 = mul i32 %254, %255
  store i32 %256, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %335, %253
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* @gc_buffer_columns, align 4
  %260 = icmp ult i32 %258, %259
  br i1 %260, label %261, label %340

261:                                              ; preds = %257
  %262 = load i64*, i64** @gc_buffer_attributes, align 8
  %263 = load i32, i32* %10, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @ATTR_NONE, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %287, label %269

269:                                              ; preds = %261
  %270 = load i8*, i8** @gc_buffer_characters, align 8
  %271 = load i32, i32* %10, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp ne i32 %275, 32
  br i1 %276, label %287, label %277

277:                                              ; preds = %269
  %278 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %279 = load i32, i32* %10, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = load i8, i8* @gc_color_code, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp ne i32 %283, %285
  br i1 %286, label %287, label %334

287:                                              ; preds = %277, %269, %261
  %288 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %289 = load i32, i32* %10, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = load i8, i8* @gc_color_code, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp ne i32 %293, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %287
  %298 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 1), align 8
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* %9, align 4
  %301 = load i64, i64* @ATTR_NONE, align 8
  %302 = call i32 %298(i32 %299, i32 %300, i8 signext 32, i64 %301, i8 signext 0, i64 0)
  br label %319

303:                                              ; preds = %287
  %304 = load i32 (i32, i32, i8, i64, i8, i64)*, i32 (i32, i32, i8, i64, i8, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 1), align 8
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* %9, align 4
  %307 = load i64, i64* @ATTR_NONE, align 8
  %308 = load i8*, i8** @gc_buffer_characters, align 8
  %309 = load i32, i32* %10, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = load i64*, i64** @gc_buffer_attributes, align 8
  %314 = load i32, i32* %10, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = call i32 %304(i32 %305, i32 %306, i8 signext 32, i64 %307, i8 signext %312, i64 %317)
  br label %319

319:                                              ; preds = %303, %297
  %320 = load i64, i64* @ATTR_NONE, align 8
  %321 = load i64*, i64** @gc_buffer_attributes, align 8
  %322 = load i32, i32* %10, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  store i64 %320, i64* %324, align 8
  %325 = load i8*, i8** @gc_buffer_characters, align 8
  %326 = load i32, i32* %10, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  store i8 32, i8* %328, align 1
  %329 = load i8, i8* @gc_color_code, align 1
  %330 = load i8*, i8** @gc_buffer_colorcodes, align 8
  %331 = load i32, i32* %10, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  store i8 %329, i8* %333, align 1
  br label %334

334:                                              ; preds = %319, %277
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %10, align 4
  %337 = add i32 %336, 1
  store i32 %337, i32* %10, align 4
  %338 = load i32, i32* %8, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %8, align 4
  br label %257

340:                                              ; preds = %257
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %9, align 4
  %343 = add i32 %342, 1
  store i32 %343, i32* %9, align 4
  br label %249

344:                                              ; preds = %249
  br label %357

345:                                              ; preds = %15
  %346 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 0), align 8
  %347 = load i32, i32* %4, align 4
  %348 = load i32, i32* %5, align 4
  %349 = load i32, i32* %6, align 4
  %350 = call i32 %346(i32 %347, i32 %348, i32 %349)
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* %4, align 4
  %353 = sub i32 %351, %352
  %354 = load i32, i32* %5, align 4
  %355 = load i32, i32* %6, align 4
  %356 = call i32 @gc_clear_screen(i32 0, i32 %353, i32 %354, i32 %355, i32 0)
  br label %357

357:                                              ; preds = %14, %345, %344
  ret void
}

declare dso_local i32 @gc_update_color(i32, i32) #1

declare dso_local i32 @COLOR_CODE_GET(i8 zeroext, i32) #1

declare dso_local i32 @gc_clear_screen(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
