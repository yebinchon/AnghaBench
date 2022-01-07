; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__gif_load_next.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__gif_load_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32, i32, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i32, i32**, i64, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bad Image Descriptor\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Corrupt GIF\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"missing color table\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"unknown code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, %struct.TYPE_5__*, i32*, i32, i64*)* @stbi__gif_load_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @stbi__gif_load_next(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %113

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @stbi__gif_header(i32* %29, %struct.TYPE_5__* %30, i32* %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i64* null, i64** %6, align 8
  br label %555

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 4, %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = call i64 @stbi__malloc(i32 %43)
  %45 = inttoptr i64 %44 to i64*
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i64* %45, i64** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 4, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = call i64 @stbi__malloc(i32 %55)
  %57 = inttoptr i64 %56 to i64*
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store i64* %57, i64** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = call i64 @stbi__malloc(i32 %66)
  %68 = inttoptr i64 %67 to i64*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i64* %68, i64** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = icmp eq i64* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %35
  %76 = call i64* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64* %76, i64** %6, align 8
  br label %555

77:                                               ; preds = %35
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 4, %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = call i32 @memset(i64* %80, i32 0, i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 4, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = call i32 @memset(i64* %92, i32 0, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = call i32 @memset(i64* %104, i32 0, i32 %111)
  store i32 1, i32* %13, align 4
  br label %224

113:                                              ; preds = %5
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 28
  %118 = ashr i32 %117, 2
  store i32 %118, i32* %12, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %132

128:                                              ; preds = %113
  %129 = load i64*, i64** %11, align 8
  %130 = icmp eq i64* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 2, i32* %12, align 4
  br label %132

132:                                              ; preds = %131, %128, %113
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %168

135:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %164, %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %136
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %140
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = mul nsw i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64*, i64** %11, align 8
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %158, 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %157, i64 %160
  %162 = call i32 @memcpy(i64* %156, i64* %161, i32 4)
  br label %163

163:                                              ; preds = %149, %140
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %136

167:                                              ; preds = %136
  br label %208

168:                                              ; preds = %132
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %206

171:                                              ; preds = %168
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %202, %171
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %205

176:                                              ; preds = %172
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 4
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %176
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %188, i64 %191
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = mul nsw i32 %196, 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %195, i64 %198
  %200 = call i32 @memcpy(i64* %192, i64* %199, i32 4)
  br label %201

201:                                              ; preds = %185, %176
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %172

205:                                              ; preds = %172
  br label %207

206:                                              ; preds = %168
  br label %207

207:                                              ; preds = %206, %205
  br label %208

208:                                              ; preds = %207, %167
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  %211 = load i64*, i64** %210, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 4, %217
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %218, %221
  %223 = call i32 @memcpy(i64* %211, i64* %214, i32 %222)
  br label %224

224:                                              ; preds = %208, %77
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  %227 = load i64*, i64** %226, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %230, %233
  %235 = call i32 @memset(i64* %227, i32 0, i32 %234)
  br label %236

236:                                              ; preds = %554, %224
  %237 = load i32*, i32** %7, align 8
  %238 = call i8* @stbi__get8(i32* %237)
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %16, align 4
  switch i32 %240, label %552 [
    i32 44, label %241
    i32 33, label %461
    i32 59, label %549
  ]

241:                                              ; preds = %236
  %242 = load i32*, i32** %7, align 8
  %243 = call i32 @stbi__get16le(i32* %242)
  store i32 %243, i32* %17, align 4
  %244 = load i32*, i32** %7, align 8
  %245 = call i32 @stbi__get16le(i32* %244)
  store i32 %245, i32* %18, align 4
  %246 = load i32*, i32** %7, align 8
  %247 = call i32 @stbi__get16le(i32* %246)
  store i32 %247, i32* %19, align 4
  %248 = load i32*, i32** %7, align 8
  %249 = call i32 @stbi__get16le(i32* %248)
  store i32 %249, i32* %20, align 4
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %250, %251
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp sgt i32 %252, %255
  br i1 %256, label %265, label %257

257:                                              ; preds = %241
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %258, %259
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = icmp sgt i32 %260, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %257, %241
  %266 = call i64* @stbi__errpuc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i64* %266, i64** %6, align 8
  br label %555

267:                                              ; preds = %257
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = mul nsw i32 %270, 4
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 6
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %17, align 4
  %275 = mul nsw i32 %274, 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %18, align 4
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %278, %281
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 8
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %19, align 4
  %289 = mul nsw i32 %288, 4
  %290 = add nsw i32 %287, %289
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 9
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %20, align 4
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %296, %299
  %301 = add nsw i32 %295, %300
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 10
  store i32 %301, i32* %303, align 4
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 11
  store i32 %306, i32* %308, align 8
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 8
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 12
  store i32 %311, i32* %313, align 4
  %314 = load i32*, i32** %7, align 8
  %315 = call i8* @stbi__get8(i32* %314)
  %316 = ptrtoint i8* %315 to i32
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 13
  store i32 %316, i32* %318, align 8
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 13
  %321 = load i32, i32* %320, align 8
  %322 = and i32 %321, 64
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %267
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 8, %327
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 14
  store i32 %328, i32* %330, align 4
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 15
  store i32 3, i32* %332, align 8
  br label %341

333:                                              ; preds = %267
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 14
  store i32 %336, i32* %338, align 4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 15
  store i32 0, i32* %340, align 8
  br label %341

341:                                              ; preds = %333, %324
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 13
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, 128
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %376

347:                                              ; preds = %341
  %348 = load i32*, i32** %7, align 8
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 22
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 13
  %354 = load i32, i32* %353, align 8
  %355 = and i32 %354, 7
  %356 = shl i32 2, %355
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = and i32 %359, 1
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %347
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 16
  %365 = load i32, i32* %364, align 4
  br label %367

366:                                              ; preds = %347
  br label %367

367:                                              ; preds = %366, %362
  %368 = phi i32 [ %365, %362 ], [ -1, %366 ]
  %369 = call i32 @stbi__gif_parse_colortable(i32* %348, i64 %351, i32 %356, i32 %368)
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 22
  %372 = load i64, i64* %371, align 8
  %373 = inttoptr i64 %372 to i64*
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 17
  store i64* %373, i64** %375, align 8
  br label %392

376:                                              ; preds = %341
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 18
  %379 = load i32, i32* %378, align 8
  %380 = and i32 %379, 128
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %376
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 19
  %385 = load i32**, i32*** %384, align 8
  %386 = bitcast i32** %385 to i64*
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 17
  store i64* %386, i64** %388, align 8
  br label %391

389:                                              ; preds = %376
  %390 = call i64* @stbi__errpuc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i64* %390, i64** %6, align 8
  br label %555

391:                                              ; preds = %382
  br label %392

392:                                              ; preds = %391, %367
  %393 = load i32*, i32** %7, align 8
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %395 = call i64* @stbi__process_gif_raster(i32* %393, %struct.TYPE_5__* %394)
  store i64* %395, i64** %21, align 8
  %396 = load i64*, i64** %21, align 8
  %397 = icmp eq i64* %396, null
  br i1 %397, label %398, label %399

398:                                              ; preds = %392
  store i64* null, i64** %6, align 8
  br label %555

399:                                              ; preds = %392
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = mul nsw i32 %402, %405
  store i32 %406, i32* %15, align 4
  %407 = load i32, i32* %13, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %459

409:                                              ; preds = %399
  %410 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 20
  %412 = load i64, i64* %411, align 8
  %413 = icmp ugt i64 %412, 0
  br i1 %413, label %414, label %459

414:                                              ; preds = %409
  store i32 0, i32* %14, align 4
  br label %415

415:                                              ; preds = %455, %414
  %416 = load i32, i32* %14, align 4
  %417 = load i32, i32* %15, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %458

419:                                              ; preds = %415
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 4
  %422 = load i64*, i64** %421, align 8
  %423 = load i32, i32* %14, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64, i64* %422, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %454

428:                                              ; preds = %419
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 19
  %431 = load i32**, i32*** %430, align 8
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 20
  %434 = load i64, i64* %433, align 8
  %435 = getelementptr inbounds i32*, i32** %431, i64 %434
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 3
  store i32 255, i32* %437, align 4
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 0
  %440 = load i64*, i64** %439, align 8
  %441 = load i32, i32* %14, align 4
  %442 = mul nsw i32 %441, 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i64, i64* %440, i64 %443
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 19
  %447 = load i32**, i32*** %446, align 8
  %448 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %448, i32 0, i32 20
  %450 = load i64, i64* %449, align 8
  %451 = getelementptr inbounds i32*, i32** %447, i64 %450
  %452 = bitcast i32** %451 to i64*
  %453 = call i32 @memcpy(i64* %444, i64* %452, i32 4)
  br label %454

454:                                              ; preds = %428, %419
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %14, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %14, align 4
  br label %415

458:                                              ; preds = %415
  br label %459

459:                                              ; preds = %458, %409, %399
  %460 = load i64*, i64** %21, align 8
  store i64* %460, i64** %6, align 8
  br label %555

461:                                              ; preds = %236
  %462 = load i32*, i32** %7, align 8
  %463 = call i8* @stbi__get8(i32* %462)
  %464 = ptrtoint i8* %463 to i32
  store i32 %464, i32* %23, align 4
  %465 = load i32, i32* %23, align 4
  %466 = icmp eq i32 %465, 249
  br i1 %466, label %467, label %538

467:                                              ; preds = %461
  %468 = load i32*, i32** %7, align 8
  %469 = call i8* @stbi__get8(i32* %468)
  %470 = ptrtoint i8* %469 to i32
  store i32 %470, i32* %22, align 4
  %471 = load i32, i32* %22, align 4
  %472 = icmp eq i32 %471, 4
  br i1 %472, label %473, label %533

473:                                              ; preds = %467
  %474 = load i32*, i32** %7, align 8
  %475 = call i8* @stbi__get8(i32* %474)
  %476 = ptrtoint i8* %475 to i32
  %477 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 5
  store i32 %476, i32* %478, align 8
  %479 = load i32*, i32** %7, align 8
  %480 = call i32 @stbi__get16le(i32* %479)
  %481 = mul nsw i32 10, %480
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 21
  store i32 %481, i32* %483, align 8
  %484 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 16
  %486 = load i32, i32* %485, align 4
  %487 = icmp sge i32 %486, 0
  br i1 %487, label %488, label %499

488:                                              ; preds = %473
  %489 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 19
  %491 = load i32**, i32*** %490, align 8
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i32 0, i32 16
  %494 = load i32, i32* %493, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32*, i32** %491, i64 %495
  %497 = load i32*, i32** %496, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 3
  store i32 255, i32* %498, align 4
  br label %499

499:                                              ; preds = %488, %473
  %500 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 8
  %503 = and i32 %502, 1
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %527

505:                                              ; preds = %499
  %506 = load i32*, i32** %7, align 8
  %507 = call i8* @stbi__get8(i32* %506)
  %508 = ptrtoint i8* %507 to i32
  %509 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %510 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %509, i32 0, i32 16
  store i32 %508, i32* %510, align 4
  %511 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i32 0, i32 16
  %513 = load i32, i32* %512, align 4
  %514 = icmp sge i32 %513, 0
  br i1 %514, label %515, label %526

515:                                              ; preds = %505
  %516 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %516, i32 0, i32 19
  %518 = load i32**, i32*** %517, align 8
  %519 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 16
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32*, i32** %518, i64 %522
  %524 = load i32*, i32** %523, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 3
  store i32 0, i32* %525, align 4
  br label %526

526:                                              ; preds = %515, %505
  br label %532

527:                                              ; preds = %499
  %528 = load i32*, i32** %7, align 8
  %529 = call i32 @stbi__skip(i32* %528, i32 1)
  %530 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 16
  store i32 -1, i32* %531, align 4
  br label %532

532:                                              ; preds = %527, %526
  br label %537

533:                                              ; preds = %467
  %534 = load i32*, i32** %7, align 8
  %535 = load i32, i32* %22, align 4
  %536 = call i32 @stbi__skip(i32* %534, i32 %535)
  br label %554

537:                                              ; preds = %532
  br label %538

538:                                              ; preds = %537, %461
  br label %539

539:                                              ; preds = %544, %538
  %540 = load i32*, i32** %7, align 8
  %541 = call i8* @stbi__get8(i32* %540)
  %542 = ptrtoint i8* %541 to i32
  store i32 %542, i32* %22, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %548

544:                                              ; preds = %539
  %545 = load i32*, i32** %7, align 8
  %546 = load i32, i32* %22, align 4
  %547 = call i32 @stbi__skip(i32* %545, i32 %546)
  br label %539

548:                                              ; preds = %539
  br label %554

549:                                              ; preds = %236
  %550 = load i32*, i32** %7, align 8
  %551 = bitcast i32* %550 to i64*
  store i64* %551, i64** %6, align 8
  br label %555

552:                                              ; preds = %236
  %553 = call i64* @stbi__errpuc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i64* %553, i64** %6, align 8
  br label %555

554:                                              ; preds = %548, %533
  br label %236

555:                                              ; preds = %552, %549, %459, %398, %389, %265, %75, %34
  %556 = load i64*, i64** %6, align 8
  ret i64* %556
}

declare dso_local i32 @stbi__gif_header(i32*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i64* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i8* @stbi__get8(i32*) #1

declare dso_local i32 @stbi__get16le(i32*) #1

declare dso_local i32 @stbi__gif_parse_colortable(i32*, i64, i32, i32) #1

declare dso_local i64* @stbi__process_gif_raster(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
