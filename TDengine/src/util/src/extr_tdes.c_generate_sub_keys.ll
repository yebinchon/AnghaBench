; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tdes.c_generate_sub_keys.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tdes.c_generate_sub_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i32* }

@initial_key_permutaion = common dso_local global i32* null, align 8
@key_shift_sizes = common dso_local global i32* null, align 8
@sub_key_permutation = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_sub_keys(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %13

27:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %78, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 56
  br i1 %30, label %31, label %81

31:                                               ; preds = %28
  %32 = load i32*, i32** @initial_key_permutaion, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = srem i32 %38, 8
  %40 = ashr i32 128, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sdiv i32 %44, 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = srem i32 %55, 8
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %5, align 4
  %64 = srem i32 %63, 8
  %65 = ashr i32 %62, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sdiv i32 %70, 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, %65
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  br label %78

78:                                               ; preds = %31
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %28

81:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %102, %81
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %94, i32* %101, align 4
  br label %102

102:                                              ; preds = %85
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 240
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  store i32 %113, i32* %118, align 4
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %163, %105
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %166

122:                                              ; preds = %119
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 15
  %134 = shl i32 %133, 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %134, i32* %141, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 240
  %153 = ashr i32 %152, 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %153
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %122
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %119

166:                                              ; preds = %119
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 6
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 15
  %175 = shl i32 %174, 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  store i32 %175, i32* %180, align 4
  store i32 1, i32* %5, align 4
  br label %181

181:                                              ; preds = %624, %166
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %182, 17
  br i1 %183, label %184, label %627

184:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %229, %184
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 4
  br i1 %187, label %188, label %232

188:                                              ; preds = %185
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %199, i32* %208, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %219, i32* %228, align 4
  br label %229

229:                                              ; preds = %188
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %185

232:                                              ; preds = %185
  %233 = load i32*, i32** @key_shift_sizes, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  store i8 -128, i8* %8, align 1
  br label %242

241:                                              ; preds = %232
  store i8 -64, i8* %8, align 1
  br label %242

242:                                              ; preds = %241, %240
  %243 = load i8, i8* %8, align 1
  %244 = zext i8 %243 to i32
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %244, %252
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %9, align 1
  %255 = load i8, i8* %8, align 1
  %256 = zext i8 %255 to i32
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %256, %264
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %10, align 1
  %267 = load i8, i8* %8, align 1
  %268 = zext i8 %267 to i32
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %268, %276
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %11, align 1
  %279 = load i8, i8* %8, align 1
  %280 = zext i8 %279 to i32
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 3
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %280, %288
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %12, align 1
  %291 = load i32, i32* %7, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = shl i32 %299, %291
  store i32 %300, i32* %298, align 4
  %301 = load i8, i8* %10, align 1
  %302 = zext i8 %301 to i32
  %303 = load i32, i32* %7, align 4
  %304 = sub nsw i32 8, %303
  %305 = ashr i32 %302, %304
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %305
  store i32 %314, i32* %312, align 4
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = shl i32 %323, %315
  store i32 %324, i32* %322, align 4
  %325 = load i8, i8* %11, align 1
  %326 = zext i8 %325 to i32
  %327 = load i32, i32* %7, align 4
  %328 = sub nsw i32 8, %327
  %329 = ashr i32 %326, %328
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %331 = load i32, i32* %5, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %329
  store i32 %338, i32* %336, align 4
  %339 = load i32, i32* %7, align 4
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %341 = load i32, i32* %5, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 2
  %347 = load i32, i32* %346, align 4
  %348 = shl i32 %347, %339
  store i32 %348, i32* %346, align 4
  %349 = load i8, i8* %12, align 1
  %350 = zext i8 %349 to i32
  %351 = load i32, i32* %7, align 4
  %352 = sub nsw i32 8, %351
  %353 = ashr i32 %350, %352
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %355 = load i32, i32* %5, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %361, %353
  store i32 %362, i32* %360, align 4
  %363 = load i32, i32* %7, align 4
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 3
  %371 = load i32, i32* %370, align 4
  %372 = shl i32 %371, %363
  store i32 %372, i32* %370, align 4
  %373 = load i8, i8* %9, align 1
  %374 = zext i8 %373 to i32
  %375 = load i32, i32* %7, align 4
  %376 = sub nsw i32 4, %375
  %377 = ashr i32 %374, %376
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 3
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %377
  store i32 %386, i32* %384, align 4
  %387 = load i8, i8* %8, align 1
  %388 = zext i8 %387 to i32
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %390 = load i32, i32* %5, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 2
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 0
  %396 = load i32, i32* %395, align 4
  %397 = and i32 %388, %396
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %9, align 1
  %399 = load i8, i8* %8, align 1
  %400 = zext i8 %399 to i32
  %401 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %402 = load i32, i32* %5, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 2
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 1
  %408 = load i32, i32* %407, align 4
  %409 = and i32 %400, %408
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %10, align 1
  %411 = load i8, i8* %8, align 1
  %412 = zext i8 %411 to i32
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %414 = load i32, i32* %5, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 2
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 2
  %420 = load i32, i32* %419, align 4
  %421 = and i32 %412, %420
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %11, align 1
  %423 = load i8, i8* %8, align 1
  %424 = zext i8 %423 to i32
  %425 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %426 = load i32, i32* %5, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 2
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 3
  %432 = load i32, i32* %431, align 4
  %433 = and i32 %424, %432
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %12, align 1
  %435 = load i32, i32* %7, align 4
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %437 = load i32, i32* %5, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 2
  %441 = load i32*, i32** %440, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 0
  %443 = load i32, i32* %442, align 4
  %444 = shl i32 %443, %435
  store i32 %444, i32* %442, align 4
  %445 = load i8, i8* %10, align 1
  %446 = zext i8 %445 to i32
  %447 = load i32, i32* %7, align 4
  %448 = sub nsw i32 8, %447
  %449 = ashr i32 %446, %448
  %450 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %451 = load i32, i32* %5, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 2
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 0
  %457 = load i32, i32* %456, align 4
  %458 = or i32 %457, %449
  store i32 %458, i32* %456, align 4
  %459 = load i32, i32* %7, align 4
  %460 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %461 = load i32, i32* %5, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i32 0, i32 2
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 1
  %467 = load i32, i32* %466, align 4
  %468 = shl i32 %467, %459
  store i32 %468, i32* %466, align 4
  %469 = load i8, i8* %11, align 1
  %470 = zext i8 %469 to i32
  %471 = load i32, i32* %7, align 4
  %472 = sub nsw i32 8, %471
  %473 = ashr i32 %470, %472
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %475 = load i32, i32* %5, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 2
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 1
  %481 = load i32, i32* %480, align 4
  %482 = or i32 %481, %473
  store i32 %482, i32* %480, align 4
  %483 = load i32, i32* %7, align 4
  %484 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %485 = load i32, i32* %5, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 2
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 2
  %491 = load i32, i32* %490, align 4
  %492 = shl i32 %491, %483
  store i32 %492, i32* %490, align 4
  %493 = load i8, i8* %12, align 1
  %494 = zext i8 %493 to i32
  %495 = load i32, i32* %7, align 4
  %496 = sub nsw i32 8, %495
  %497 = ashr i32 %494, %496
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %499 = load i32, i32* %5, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i32 0, i32 2
  %503 = load i32*, i32** %502, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 2
  %505 = load i32, i32* %504, align 4
  %506 = or i32 %505, %497
  store i32 %506, i32* %504, align 4
  %507 = load i32, i32* %7, align 4
  %508 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %509 = load i32, i32* %5, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 2
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 3
  %515 = load i32, i32* %514, align 4
  %516 = shl i32 %515, %507
  store i32 %516, i32* %514, align 4
  %517 = load i8, i8* %9, align 1
  %518 = zext i8 %517 to i32
  %519 = load i32, i32* %7, align 4
  %520 = sub nsw i32 4, %519
  %521 = ashr i32 %518, %520
  %522 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %523 = load i32, i32* %5, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %525, i32 0, i32 2
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 3
  %529 = load i32, i32* %528, align 4
  %530 = or i32 %529, %521
  store i32 %530, i32* %528, align 4
  store i32 0, i32* %6, align 4
  br label %531

531:                                              ; preds = %620, %242
  %532 = load i32, i32* %6, align 4
  %533 = icmp slt i32 %532, 48
  br i1 %533, label %534, label %623

534:                                              ; preds = %531
  %535 = load i32*, i32** @sub_key_permutation, align 8
  %536 = load i32, i32* %6, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  %539 = load i32, i32* %538, align 4
  store i32 %539, i32* %7, align 4
  %540 = load i32, i32* %7, align 4
  %541 = icmp sle i32 %540, 28
  br i1 %541, label %542, label %571

542:                                              ; preds = %534
  %543 = load i32, i32* %7, align 4
  %544 = sub nsw i32 %543, 1
  %545 = srem i32 %544, 8
  %546 = ashr i32 128, %545
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %8, align 1
  %548 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %549 = load i32, i32* %5, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %551, i32 0, i32 1
  %553 = load i32*, i32** %552, align 8
  %554 = load i32, i32* %7, align 4
  %555 = sub nsw i32 %554, 1
  %556 = sdiv i32 %555, 8
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %553, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = load i8, i8* %8, align 1
  %561 = zext i8 %560 to i32
  %562 = and i32 %561, %559
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %8, align 1
  %564 = load i32, i32* %7, align 4
  %565 = sub nsw i32 %564, 1
  %566 = srem i32 %565, 8
  %567 = load i8, i8* %8, align 1
  %568 = zext i8 %567 to i32
  %569 = shl i32 %568, %566
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %8, align 1
  br label %600

571:                                              ; preds = %534
  %572 = load i32, i32* %7, align 4
  %573 = sub nsw i32 %572, 29
  %574 = srem i32 %573, 8
  %575 = ashr i32 128, %574
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %8, align 1
  %577 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %578 = load i32, i32* %5, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %580, i32 0, i32 2
  %582 = load i32*, i32** %581, align 8
  %583 = load i32, i32* %7, align 4
  %584 = sub nsw i32 %583, 29
  %585 = sdiv i32 %584, 8
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %582, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = load i8, i8* %8, align 1
  %590 = zext i8 %589 to i32
  %591 = and i32 %590, %588
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %8, align 1
  %593 = load i32, i32* %7, align 4
  %594 = sub nsw i32 %593, 29
  %595 = srem i32 %594, 8
  %596 = load i8, i8* %8, align 1
  %597 = zext i8 %596 to i32
  %598 = shl i32 %597, %595
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %8, align 1
  br label %600

600:                                              ; preds = %571, %542
  %601 = load i8, i8* %8, align 1
  %602 = zext i8 %601 to i32
  %603 = load i32, i32* %6, align 4
  %604 = srem i32 %603, 8
  %605 = ashr i32 %602, %604
  %606 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %607 = load i32, i32* %5, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %609, i32 0, i32 0
  %611 = load i8*, i8** %610, align 8
  %612 = load i32, i32* %6, align 4
  %613 = sdiv i32 %612, 8
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i8, i8* %611, i64 %614
  %616 = load i8, i8* %615, align 1
  %617 = zext i8 %616 to i32
  %618 = or i32 %617, %605
  %619 = trunc i32 %618 to i8
  store i8 %619, i8* %615, align 1
  br label %620

620:                                              ; preds = %600
  %621 = load i32, i32* %6, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %6, align 4
  br label %531

623:                                              ; preds = %531
  br label %624

624:                                              ; preds = %623
  %625 = load i32, i32* %5, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %5, align 4
  br label %181

627:                                              ; preds = %181
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
