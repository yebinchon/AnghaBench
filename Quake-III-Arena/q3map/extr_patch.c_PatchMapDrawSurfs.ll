; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_patch.c_PatchMapDrawSurfs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_patch.c_PatchMapDrawSurfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_12__, i8*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_9__ = type { i32*, i32 }

@MAX_MAP_DRAW_SURFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"----- PatchMapDrawSurfs -----\0A\00", align 1
@qtrue = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%5i patches\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%5i patch LOD groups\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PatchMapDrawSurfs(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %24 = load i32, i32* @MAX_MAP_DRAW_SURFS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca %struct.TYPE_8__*, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = load i32, i32* @MAX_MAP_DRAW_SURFS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  %31 = load i32, i32* @MAX_MAP_DRAW_SURFS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %34 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %3, align 8
  br label %38

38:                                               ; preds = %48, %1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %44
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %3, align 8
  br label %38

52:                                               ; preds = %38
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 1, i32* %23, align 4
  br label %360

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32* @malloc(i32 %59)
  store i32* %60, i32** %18, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @memset(i32* %61, i32 0, i32 %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %232, %56
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %235

70:                                               ; preds = %66
  %71 = load i32*, i32** %18, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %228, %70
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %231

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %4, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %5, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %97, %101
  store i32 %102, i32* %13, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %15, align 8
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %184, %85
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %189

111:                                              ; preds = %107
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %115, %119
  store i32 %120, i32* %14, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %16, align 8
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %173, %111
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %178

129:                                              ; preds = %125
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %134, %139
  %141 = call double @fabs(i64 %140)
  %142 = fcmp olt double %141, 1.000000e+00
  br i1 %142, label %143, label %172

143:                                              ; preds = %129
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %148, %153
  %155 = call double @fabs(i64 %154)
  %156 = fcmp olt double %155, 1.000000e+00
  br i1 %156, label %157, label %172

157:                                              ; preds = %143
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 2
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %162, %167
  %169 = call double @fabs(i64 %168)
  %170 = fcmp olt double %169, 1.000000e+00
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %178

172:                                              ; preds = %157, %143, %129
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 1
  store %struct.TYPE_11__* %177, %struct.TYPE_11__** %16, align 8
  br label %125

178:                                              ; preds = %171, %125
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %189

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 1
  store %struct.TYPE_11__* %188, %struct.TYPE_11__** %15, align 8
  br label %107

189:                                              ; preds = %182, %107
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %189
  %194 = load i32*, i32** %18, align 8
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %7, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %194, i64 %200
  store i32 1, i32* %201, align 4
  %202 = load i32*, i32** %18, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %7, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %202, i64 %208
  store i32 1, i32* %209, align 4
  br label %227

210:                                              ; preds = %189
  %211 = load i32*, i32** %18, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %7, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %211, i64 %217
  store i32 0, i32* %218, align 4
  %219 = load i32*, i32** %18, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %7, align 4
  %222 = mul nsw i32 %220, %221
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %210, %193
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %81

231:                                              ; preds = %81
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %66

235:                                              ; preds = %66
  %236 = mul nuw i64 4, %29
  %237 = trunc i64 %236 to i32
  %238 = call i32 @memset(i32* %30, i32 0, i32 %237)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %239

239:                                              ; preds = %352, %235
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %355

243:                                              ; preds = %239
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %30, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %243
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %249, %243
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @memset(i32* %33, i32 0, i32 %253)
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %7, align 4
  %257 = load i32*, i32** %18, align 8
  %258 = call i32 @GrowGroup_r(i32 %255, i32 %256, i32* %257, i32* %33)
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ClearBounds(i32 %260, i32 %262)
  store i32 0, i32* %10, align 4
  br label %264

264:                                              ; preds = %317, %252
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %320

268:                                              ; preds = %264
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %33, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %316

274:                                              ; preds = %268
  %275 = load i8*, i8** @qtrue, align 8
  %276 = ptrtoint i8* %275 to i32
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %30, i64 %278
  store i32 %276, i32* %279, align 4
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %281
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  store %struct.TYPE_8__* %283, %struct.TYPE_8__** %5, align 8
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 %287, %291
  store i32 %292, i32* %13, align 4
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  store %struct.TYPE_11__* %296, %struct.TYPE_11__** %15, align 8
  store i32 0, i32* %11, align 4
  br label %297

297:                                              ; preds = %310, %274
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* %13, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %315

301:                                              ; preds = %297
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @AddPointToBounds(i64* %304, i32 %306, i32 %308)
  br label %310

310:                                              ; preds = %301
  %311 = load i32, i32* %11, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %11, align 4
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 1
  store %struct.TYPE_11__* %314, %struct.TYPE_11__** %15, align 8
  br label %297

315:                                              ; preds = %297
  br label %316

316:                                              ; preds = %315, %268
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %10, align 4
  br label %264

320:                                              ; preds = %264
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %322
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %323, align 8
  store %struct.TYPE_8__* %324, %struct.TYPE_8__** %5, align 8
  %325 = load i8*, i8** @qtrue, align 8
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  store i8* %325, i8** %327, align 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 1
  %330 = call %struct.TYPE_9__* @DrawSurfaceForMesh(%struct.TYPE_12__* %329)
  store %struct.TYPE_9__* %330, %struct.TYPE_9__** %6, align 8
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 8
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @VectorCopy(i32 %337, i32 %342)
  %344 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @VectorCopy(i32 %345, i32 %350)
  br label %352

352:                                              ; preds = %320
  %353 = load i32, i32* %9, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %9, align 4
  br label %239

355:                                              ; preds = %239
  %356 = load i32, i32* %7, align 4
  %357 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* %8, align 4
  %359 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %358)
  store i32 0, i32* %23, align 4
  br label %360

360:                                              ; preds = %355, %55
  %361 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %361)
  %362 = load i32, i32* %23, align 4
  switch i32 %362, label %364 [
    i32 0, label %363
    i32 1, label %363
  ]

363:                                              ; preds = %360, %360
  ret void

364:                                              ; preds = %360
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qprintf(i8*, ...) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local double @fabs(i64) #2

declare dso_local i32 @GrowGroup_r(i32, i32, i32*, i32*) #2

declare dso_local i32 @ClearBounds(i32, i32) #2

declare dso_local i32 @AddPointToBounds(i64*, i32, i32) #2

declare dso_local %struct.TYPE_9__* @DrawSurfaceForMesh(%struct.TYPE_12__*) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
