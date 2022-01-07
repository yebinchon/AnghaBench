; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_LoadTGABuffer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_LoadTGABuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [73 x i8] c"LoadTGA: Only type 2 (RGB), 3 (gray), and 10 (RGB) TGA images supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"LoadTGA: colormaps not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"LoadTGA: Only 32 or 24 bit images supported (no colormaps)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadTGABuffer(i32* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_2__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %29 = load i32**, i32*** %6, align 8
  store i32* null, i32** %29, align 8
  %30 = load i32*, i32** %5, align 8
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %15, align 8
  %33 = load i32, i32* %31, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %15, align 8
  %38 = load i32, i32* %36, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %15, align 8
  %43 = load i32, i32* %41, align 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = bitcast i32* %45 to i16*
  %47 = load i16, i16* %46, align 2
  %48 = call i8* @LittleShort(i16 signext %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 11
  store i8* %48, i8** %49, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32* %51, i32** %15, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = bitcast i32* %52 to i16*
  %54 = load i16, i16* %53, align 2
  %55 = call i8* @LittleShort(i16 signext %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 10
  store i8* %55, i8** %56, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %15, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %15, align 8
  %61 = load i32, i32* %59, align 4
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 9
  store i32 %61, i32* %62, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = bitcast i32* %63 to i16*
  %65 = load i16, i16* %64, align 2
  %66 = call i8* @LittleShort(i16 signext %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  store i8* %66, i8** %67, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32* %69, i32** %15, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = bitcast i32* %70 to i16*
  %72 = load i16, i16* %71, align 2
  %73 = call i8* @LittleShort(i16 signext %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  store i8* %73, i8** %74, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = bitcast i32* %77 to i16*
  %79 = load i16, i16* %78, align 2
  %80 = call i8* @LittleShort(i16 signext %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = bitcast i32* %85 to i16*
  %87 = load i16, i16* %86, align 2
  %88 = call i8* @LittleShort(i16 signext %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 %89, i32* %90, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32* %92, i32** %15, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %15, align 8
  %95 = load i32, i32* %93, align 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %15, align 8
  %99 = load i32, i32* %97, align 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store i32 %99, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 2
  br i1 %103, label %104, label %114

104:                                              ; preds = %4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 10
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 3
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 @Error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108, %104, %4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %114
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 32
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 24
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 3
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @Error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128, %124, %120
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %9, align 4
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %11, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i32, i32* %9, align 4
  %146 = load i32*, i32** %7, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %134
  %148 = load i32*, i32** %8, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  %152 = load i32*, i32** %8, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %11, align 4
  %155 = mul nsw i32 %154, 4
  %156 = call i32* @malloc(i32 %155)
  store i32* %156, i32** %17, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i32**, i32*** %6, align 8
  store i32* %157, i32** %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 %164
  store i32* %166, i32** %15, align 8
  br label %167

167:                                              ; preds = %162, %153
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %287

175:                                              ; preds = %171, %167
  %176 = load i32, i32* %10, align 4
  %177 = sub nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %283, %175
  %179 = load i32, i32* %13, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %286

181:                                              ; preds = %178
  %182 = load i32*, i32** %17, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %9, align 4
  %185 = mul nsw i32 %183, %184
  %186 = mul nsw i32 %185, 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  store i32* %188, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %189

189:                                              ; preds = %279, %181
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %282

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  switch i32 %195, label %277 [
    i32 8, label %196
    i32 24, label %217
    i32 32, label %244
  ]

196:                                              ; preds = %193
  %197 = load i32*, i32** %15, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %15, align 8
  %199 = load i32, i32* %197, align 4
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %20, align 1
  %201 = load i8, i8* %20, align 1
  store i8 %201, i8* %19, align 1
  %202 = load i8, i8* %20, align 1
  store i8 %202, i8* %18, align 1
  %203 = load i8, i8* %18, align 1
  %204 = zext i8 %203 to i32
  %205 = load i32*, i32** %12, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %12, align 8
  store i32 %204, i32* %205, align 4
  %207 = load i8, i8* %19, align 1
  %208 = zext i8 %207 to i32
  %209 = load i32*, i32** %12, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %12, align 8
  store i32 %208, i32* %209, align 4
  %211 = load i8, i8* %20, align 1
  %212 = zext i8 %211 to i32
  %213 = load i32*, i32** %12, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %12, align 8
  store i32 %212, i32* %213, align 4
  %215 = load i32*, i32** %12, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %12, align 8
  store i32 255, i32* %215, align 4
  br label %278

217:                                              ; preds = %193
  %218 = load i32*, i32** %15, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %15, align 8
  %220 = load i32, i32* %218, align 4
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %20, align 1
  %222 = load i32*, i32** %15, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 1
  store i32* %223, i32** %15, align 8
  %224 = load i32, i32* %222, align 4
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %19, align 1
  %226 = load i32*, i32** %15, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %15, align 8
  %228 = load i32, i32* %226, align 4
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %18, align 1
  %230 = load i8, i8* %18, align 1
  %231 = zext i8 %230 to i32
  %232 = load i32*, i32** %12, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %12, align 8
  store i32 %231, i32* %232, align 4
  %234 = load i8, i8* %19, align 1
  %235 = zext i8 %234 to i32
  %236 = load i32*, i32** %12, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %12, align 8
  store i32 %235, i32* %236, align 4
  %238 = load i8, i8* %20, align 1
  %239 = zext i8 %238 to i32
  %240 = load i32*, i32** %12, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %12, align 8
  store i32 %239, i32* %240, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %12, align 8
  store i32 255, i32* %242, align 4
  br label %278

244:                                              ; preds = %193
  %245 = load i32*, i32** %15, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %15, align 8
  %247 = load i32, i32* %245, align 4
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %20, align 1
  %249 = load i32*, i32** %15, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %15, align 8
  %251 = load i32, i32* %249, align 4
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %19, align 1
  %253 = load i32*, i32** %15, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %15, align 8
  %255 = load i32, i32* %253, align 4
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %18, align 1
  %257 = load i32*, i32** %15, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %15, align 8
  %259 = load i32, i32* %257, align 4
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %21, align 1
  %261 = load i8, i8* %18, align 1
  %262 = zext i8 %261 to i32
  %263 = load i32*, i32** %12, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %12, align 8
  store i32 %262, i32* %263, align 4
  %265 = load i8, i8* %19, align 1
  %266 = zext i8 %265 to i32
  %267 = load i32*, i32** %12, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %12, align 8
  store i32 %266, i32* %267, align 4
  %269 = load i8, i8* %20, align 1
  %270 = zext i8 %269 to i32
  %271 = load i32*, i32** %12, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %12, align 8
  store i32 %270, i32* %271, align 4
  %273 = load i8, i8* %21, align 1
  %274 = zext i8 %273 to i32
  %275 = load i32*, i32** %12, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** %12, align 8
  store i32 %274, i32* %275, align 4
  br label %278

277:                                              ; preds = %193
  br label %278

278:                                              ; preds = %277, %244, %217, %196
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %14, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %14, align 4
  br label %189

282:                                              ; preds = %189
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %13, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %13, align 4
  br label %178

286:                                              ; preds = %178
  br label %511

287:                                              ; preds = %171
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, 10
  br i1 %290, label %291, label %510

291:                                              ; preds = %287
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %24, align 1
  store i8 -1, i8* %25, align 1
  %292 = load i32, i32* %10, align 4
  %293 = sub nsw i32 %292, 1
  store i32 %293, i32* %13, align 4
  br label %294

294:                                              ; preds = %506, %291
  %295 = load i32, i32* %13, align 4
  %296 = icmp sge i32 %295, 0
  br i1 %296, label %297, label %509

297:                                              ; preds = %294
  %298 = load i32*, i32** %17, align 8
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %9, align 4
  %301 = mul nsw i32 %299, %300
  %302 = mul nsw i32 %301, 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %298, i64 %303
  store i32* %304, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %305

305:                                              ; preds = %503, %297
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %9, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %504

309:                                              ; preds = %305
  %310 = load i32*, i32** %15, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %15, align 8
  %312 = load i32, i32* %310, align 4
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %26, align 1
  %314 = load i8, i8* %26, align 1
  %315 = zext i8 %314 to i32
  %316 = and i32 %315, 127
  %317 = add nsw i32 1, %316
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %27, align 1
  %319 = load i8, i8* %26, align 1
  %320 = zext i8 %319 to i32
  %321 = and i32 %320, 128
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %406

323:                                              ; preds = %309
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  switch i32 %325, label %356 [
    i32 24, label %326
    i32 32, label %339
  ]

326:                                              ; preds = %323
  %327 = load i32*, i32** %15, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %15, align 8
  %329 = load i32, i32* %327, align 4
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %24, align 1
  %331 = load i32*, i32** %15, align 8
  %332 = getelementptr inbounds i32, i32* %331, i32 1
  store i32* %332, i32** %15, align 8
  %333 = load i32, i32* %331, align 4
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %23, align 1
  %335 = load i32*, i32** %15, align 8
  %336 = getelementptr inbounds i32, i32* %335, i32 1
  store i32* %336, i32** %15, align 8
  %337 = load i32, i32* %335, align 4
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %22, align 1
  store i8 -1, i8* %25, align 1
  br label %357

339:                                              ; preds = %323
  %340 = load i32*, i32** %15, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %15, align 8
  %342 = load i32, i32* %340, align 4
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %24, align 1
  %344 = load i32*, i32** %15, align 8
  %345 = getelementptr inbounds i32, i32* %344, i32 1
  store i32* %345, i32** %15, align 8
  %346 = load i32, i32* %344, align 4
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %23, align 1
  %348 = load i32*, i32** %15, align 8
  %349 = getelementptr inbounds i32, i32* %348, i32 1
  store i32* %349, i32** %15, align 8
  %350 = load i32, i32* %348, align 4
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %22, align 1
  %352 = load i32*, i32** %15, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %15, align 8
  %354 = load i32, i32* %352, align 4
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %25, align 1
  br label %357

356:                                              ; preds = %323
  br label %357

357:                                              ; preds = %356, %339, %326
  store i8 0, i8* %28, align 1
  br label %358

358:                                              ; preds = %402, %357
  %359 = load i8, i8* %28, align 1
  %360 = zext i8 %359 to i32
  %361 = load i8, i8* %27, align 1
  %362 = zext i8 %361 to i32
  %363 = icmp slt i32 %360, %362
  br i1 %363, label %364, label %405

364:                                              ; preds = %358
  %365 = load i8, i8* %22, align 1
  %366 = zext i8 %365 to i32
  %367 = load i32*, i32** %12, align 8
  %368 = getelementptr inbounds i32, i32* %367, i32 1
  store i32* %368, i32** %12, align 8
  store i32 %366, i32* %367, align 4
  %369 = load i8, i8* %23, align 1
  %370 = zext i8 %369 to i32
  %371 = load i32*, i32** %12, align 8
  %372 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %372, i32** %12, align 8
  store i32 %370, i32* %371, align 4
  %373 = load i8, i8* %24, align 1
  %374 = zext i8 %373 to i32
  %375 = load i32*, i32** %12, align 8
  %376 = getelementptr inbounds i32, i32* %375, i32 1
  store i32* %376, i32** %12, align 8
  store i32 %374, i32* %375, align 4
  %377 = load i8, i8* %25, align 1
  %378 = zext i8 %377 to i32
  %379 = load i32*, i32** %12, align 8
  %380 = getelementptr inbounds i32, i32* %379, i32 1
  store i32* %380, i32** %12, align 8
  store i32 %378, i32* %379, align 4
  %381 = load i32, i32* %14, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %14, align 4
  %383 = load i32, i32* %14, align 4
  %384 = load i32, i32* %9, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %401

386:                                              ; preds = %364
  store i32 0, i32* %14, align 4
  %387 = load i32, i32* %13, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i32, i32* %13, align 4
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %13, align 4
  br label %393

392:                                              ; preds = %386
  br label %505

393:                                              ; preds = %389
  %394 = load i32*, i32** %17, align 8
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* %9, align 4
  %397 = mul nsw i32 %395, %396
  %398 = mul nsw i32 %397, 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %394, i64 %399
  store i32* %400, i32** %12, align 8
  br label %401

401:                                              ; preds = %393, %364
  br label %402

402:                                              ; preds = %401
  %403 = load i8, i8* %28, align 1
  %404 = add i8 %403, 1
  store i8 %404, i8* %28, align 1
  br label %358

405:                                              ; preds = %358
  br label %503

406:                                              ; preds = %309
  store i8 0, i8* %28, align 1
  br label %407

407:                                              ; preds = %499, %406
  %408 = load i8, i8* %28, align 1
  %409 = zext i8 %408 to i32
  %410 = load i8, i8* %27, align 1
  %411 = zext i8 %410 to i32
  %412 = icmp slt i32 %409, %411
  br i1 %412, label %413, label %502

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  switch i32 %415, label %476 [
    i32 24, label %416
    i32 32, label %443
  ]

416:                                              ; preds = %413
  %417 = load i32*, i32** %15, align 8
  %418 = getelementptr inbounds i32, i32* %417, i32 1
  store i32* %418, i32** %15, align 8
  %419 = load i32, i32* %417, align 4
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %24, align 1
  %421 = load i32*, i32** %15, align 8
  %422 = getelementptr inbounds i32, i32* %421, i32 1
  store i32* %422, i32** %15, align 8
  %423 = load i32, i32* %421, align 4
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %23, align 1
  %425 = load i32*, i32** %15, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 1
  store i32* %426, i32** %15, align 8
  %427 = load i32, i32* %425, align 4
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %22, align 1
  %429 = load i8, i8* %22, align 1
  %430 = zext i8 %429 to i32
  %431 = load i32*, i32** %12, align 8
  %432 = getelementptr inbounds i32, i32* %431, i32 1
  store i32* %432, i32** %12, align 8
  store i32 %430, i32* %431, align 4
  %433 = load i8, i8* %23, align 1
  %434 = zext i8 %433 to i32
  %435 = load i32*, i32** %12, align 8
  %436 = getelementptr inbounds i32, i32* %435, i32 1
  store i32* %436, i32** %12, align 8
  store i32 %434, i32* %435, align 4
  %437 = load i8, i8* %24, align 1
  %438 = zext i8 %437 to i32
  %439 = load i32*, i32** %12, align 8
  %440 = getelementptr inbounds i32, i32* %439, i32 1
  store i32* %440, i32** %12, align 8
  store i32 %438, i32* %439, align 4
  %441 = load i32*, i32** %12, align 8
  %442 = getelementptr inbounds i32, i32* %441, i32 1
  store i32* %442, i32** %12, align 8
  store i32 255, i32* %441, align 4
  br label %477

443:                                              ; preds = %413
  %444 = load i32*, i32** %15, align 8
  %445 = getelementptr inbounds i32, i32* %444, i32 1
  store i32* %445, i32** %15, align 8
  %446 = load i32, i32* %444, align 4
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %24, align 1
  %448 = load i32*, i32** %15, align 8
  %449 = getelementptr inbounds i32, i32* %448, i32 1
  store i32* %449, i32** %15, align 8
  %450 = load i32, i32* %448, align 4
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %23, align 1
  %452 = load i32*, i32** %15, align 8
  %453 = getelementptr inbounds i32, i32* %452, i32 1
  store i32* %453, i32** %15, align 8
  %454 = load i32, i32* %452, align 4
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %22, align 1
  %456 = load i32*, i32** %15, align 8
  %457 = getelementptr inbounds i32, i32* %456, i32 1
  store i32* %457, i32** %15, align 8
  %458 = load i32, i32* %456, align 4
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %25, align 1
  %460 = load i8, i8* %22, align 1
  %461 = zext i8 %460 to i32
  %462 = load i32*, i32** %12, align 8
  %463 = getelementptr inbounds i32, i32* %462, i32 1
  store i32* %463, i32** %12, align 8
  store i32 %461, i32* %462, align 4
  %464 = load i8, i8* %23, align 1
  %465 = zext i8 %464 to i32
  %466 = load i32*, i32** %12, align 8
  %467 = getelementptr inbounds i32, i32* %466, i32 1
  store i32* %467, i32** %12, align 8
  store i32 %465, i32* %466, align 4
  %468 = load i8, i8* %24, align 1
  %469 = zext i8 %468 to i32
  %470 = load i32*, i32** %12, align 8
  %471 = getelementptr inbounds i32, i32* %470, i32 1
  store i32* %471, i32** %12, align 8
  store i32 %469, i32* %470, align 4
  %472 = load i8, i8* %25, align 1
  %473 = zext i8 %472 to i32
  %474 = load i32*, i32** %12, align 8
  %475 = getelementptr inbounds i32, i32* %474, i32 1
  store i32* %475, i32** %12, align 8
  store i32 %473, i32* %474, align 4
  br label %477

476:                                              ; preds = %413
  br label %477

477:                                              ; preds = %476, %443, %416
  %478 = load i32, i32* %14, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %14, align 4
  %480 = load i32, i32* %14, align 4
  %481 = load i32, i32* %9, align 4
  %482 = icmp eq i32 %480, %481
  br i1 %482, label %483, label %498

483:                                              ; preds = %477
  store i32 0, i32* %14, align 4
  %484 = load i32, i32* %13, align 4
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  %487 = load i32, i32* %13, align 4
  %488 = add nsw i32 %487, -1
  store i32 %488, i32* %13, align 4
  br label %490

489:                                              ; preds = %483
  br label %505

490:                                              ; preds = %486
  %491 = load i32*, i32** %17, align 8
  %492 = load i32, i32* %13, align 4
  %493 = load i32, i32* %9, align 4
  %494 = mul nsw i32 %492, %493
  %495 = mul nsw i32 %494, 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %491, i64 %496
  store i32* %497, i32** %12, align 8
  br label %498

498:                                              ; preds = %490, %477
  br label %499

499:                                              ; preds = %498
  %500 = load i8, i8* %28, align 1
  %501 = add i8 %500, 1
  store i8 %501, i8* %28, align 1
  br label %407

502:                                              ; preds = %407
  br label %503

503:                                              ; preds = %502, %405
  br label %305

504:                                              ; preds = %305
  br label %505

505:                                              ; preds = %504, %489, %392
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %13, align 4
  %508 = add nsw i32 %507, -1
  store i32 %508, i32* %13, align 4
  br label %294

509:                                              ; preds = %294
  br label %510

510:                                              ; preds = %509, %287
  br label %511

511:                                              ; preds = %510, %286
  ret void
}

declare dso_local i8* @LittleShort(i16 signext) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
