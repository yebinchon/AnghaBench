; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackToJson.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackToJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32, i8*, i32, i64 }

@INFINITE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PackToJson(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = icmp eq %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32* (...) @JsonNewObject()
  store i32* %29, i32** %2, align 8
  br label %361

30:                                               ; preds = %1
  %31 = call i32* (...) @NewStrList()
  store i32* %31, i32** %9, align 8
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %69, %30
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @LIST_NUM(i32* %36)
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i8* @LIST_DATA(i32* %42, i64 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %10, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %55, label %50

50:                                               ; preds = %39
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50, %39
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @IsEmptyStr(i8* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @AddStrToStrListDistinct(i32* %62, i8* %65)
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %32

72:                                               ; preds = %32
  store i64 0, i64* %6, align 8
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @LIST_NUM(i32* %77)
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i8* @LIST_DATA(i32* %83, i64 %84)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @IsEmptyStr(i8* %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i32*, i32** %9, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @AddStrToStrListDistinct(i32* %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %80
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %6, align 8
  br label %73

97:                                               ; preds = %73
  %98 = call i32* (...) @JsonNewObject()
  store i32* %98, i32** %4, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32* @JsonValueGetObject(i32* %99)
  store i32* %100, i32** %5, align 8
  store i64 0, i64* %8, align 8
  br label %101

101:                                              ; preds = %265, %97
  %102 = load i64, i64* %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i64 @LIST_NUM(i32* %103)
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %106, label %268

106:                                              ; preds = %101
  %107 = load i32*, i32** %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i8* @LIST_DATA(i32* %107, i64 %108)
  store i8* %109, i8** %12, align 8
  %110 = load i64, i64* @INFINITE, align 8
  store i64 %110, i64* %13, align 8
  store i32 1, i32* %14, align 4
  store i64 0, i64* %6, align 8
  br label %111

111:                                              ; preds = %162, %106
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @LIST_NUM(i32* %115)
  %117 = icmp slt i64 %112, %116
  br i1 %117, label %118, label %165

118:                                              ; preds = %111
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i8* @LIST_DATA(i32* %121, i64 %122)
  %124 = bitcast i8* %123 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %15, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 2
  br i1 %128, label %134, label %129

129:                                              ; preds = %118
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %129, %118
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i64 @StrCmpi(i8* %137, i8* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %134
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @INFINITE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %13, align 8
  br label %159

150:                                              ; preds = %141
  %151 = load i64, i64* %13, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = icmp ne i64 %151, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %157, %150
  br label %159

159:                                              ; preds = %158, %145
  br label %160

160:                                              ; preds = %159, %134
  br label %161

161:                                              ; preds = %160, %129
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %6, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %6, align 8
  br label %111

165:                                              ; preds = %111
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* @INFINITE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i64 0, i64* %13, align 8
  br label %170

170:                                              ; preds = %169, %165
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %264

173:                                              ; preds = %170
  %174 = load i64, i64* %13, align 8
  %175 = mul i64 8, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32** @ZeroMalloc(i32 %176)
  store i32** %177, i32*** %16, align 8
  %178 = call i32* (...) @JsonNewArray()
  store i32* %178, i32** %17, align 8
  %179 = load i32*, i32** %17, align 8
  %180 = call i32* @JsonArray(i32* %179)
  store i32* %180, i32** %18, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load i32*, i32** %17, align 8
  %184 = call i32 @JsonSet(i32* %181, i8* %182, i32* %183)
  store i64 0, i64* %7, align 8
  br label %185

185:                                              ; preds = %200, %173
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* %13, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = call i32* (...) @JsonNewObject()
  %191 = load i32**, i32*** %16, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds i32*, i32** %191, i64 %192
  store i32* %190, i32** %193, align 8
  %194 = load i32*, i32** %18, align 8
  %195 = load i32**, i32*** %16, align 8
  %196 = load i64, i64* %7, align 8
  %197 = getelementptr inbounds i32*, i32** %195, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @JsonArrayAdd(i32* %194, i32* %198)
  br label %200

200:                                              ; preds = %189
  %201 = load i64, i64* %7, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %7, align 8
  br label %185

203:                                              ; preds = %185
  store i64 0, i64* %6, align 8
  br label %204

204:                                              ; preds = %258, %203
  %205 = load i64, i64* %6, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = call i64 @LIST_NUM(i32* %208)
  %210 = icmp slt i64 %205, %209
  br i1 %210, label %211, label %261

211:                                              ; preds = %204
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %6, align 8
  %216 = call i8* @LIST_DATA(i32* %214, i64 %215)
  %217 = bitcast i8* %216 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %217, %struct.TYPE_10__** %19, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp sge i32 %220, 2
  br i1 %221, label %227, label %222

222:                                              ; preds = %211
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %222, %211
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = call i64 @StrCmpi(i8* %230, i8* %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %256

234:                                              ; preds = %227
  store i64 0, i64* %7, align 8
  br label %235

235:                                              ; preds = %252, %234
  %236 = load i64, i64* %7, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %236, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %235
  %243 = load i32**, i32*** %16, align 8
  %244 = load i64, i64* %7, align 8
  %245 = getelementptr inbounds i32*, i32** %243, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = call i32* @JsonValueGetObject(i32* %246)
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %250 = load i64, i64* %7, align 8
  %251 = call i32 @PackElementToJsonObject(i32* %247, %struct.TYPE_9__* %248, %struct.TYPE_10__* %249, i64 %250)
  br label %252

252:                                              ; preds = %242
  %253 = load i64, i64* %7, align 8
  %254 = add nsw i64 %253, 1
  store i64 %254, i64* %7, align 8
  br label %235

255:                                              ; preds = %235
  br label %256

256:                                              ; preds = %255, %227
  br label %257

257:                                              ; preds = %256, %222
  br label %258

258:                                              ; preds = %257
  %259 = load i64, i64* %6, align 8
  %260 = add nsw i64 %259, 1
  store i64 %260, i64* %6, align 8
  br label %204

261:                                              ; preds = %204
  %262 = load i32**, i32*** %16, align 8
  %263 = call i32 @Free(i32** %262)
  br label %264

264:                                              ; preds = %261, %170
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* %8, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %8, align 8
  br label %101

268:                                              ; preds = %101
  store i64 0, i64* %6, align 8
  br label %269

269:                                              ; preds = %354, %268
  %270 = load i64, i64* %6, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = call i64 @LIST_NUM(i32* %273)
  %275 = icmp slt i64 %270, %274
  br i1 %275, label %276, label %357

276:                                              ; preds = %269
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %6, align 8
  %281 = call i8* @LIST_DATA(i32* %279, i64 %280)
  %282 = bitcast i8* %281 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %282, %struct.TYPE_10__** %20, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp sge i32 %285, 2
  br i1 %286, label %292, label %287

287:                                              ; preds = %276
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %342

292:                                              ; preds = %287, %276
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @IsEmptyStr(i8* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %341

298:                                              ; preds = %292
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %300 = call i8* @DetermineJsonSuffixForPackElement(%struct.TYPE_10__* %299)
  store i8* %300, i8** %21, align 8
  %301 = load i8*, i8** %21, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %303, label %340

303:                                              ; preds = %298
  %304 = call i32* (...) @JsonNewArray()
  store i32* %304, i32** %22, align 8
  %305 = load i32*, i32** %22, align 8
  %306 = call i32* @JsonArray(i32* %305)
  store i32* %306, i32** %23, align 8
  %307 = load i32, i32* @MAX_PATH, align 4
  %308 = zext i32 %307 to i64
  %309 = call i8* @llvm.stacksave()
  store i8* %309, i8** %24, align 8
  %310 = alloca i8, i64 %308, align 16
  store i64 %308, i64* %25, align 8
  store i64 0, i64* %7, align 8
  br label %311

311:                                              ; preds = %324, %303
  %312 = load i64, i64* %7, align 8
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sext i32 %315 to i64
  %317 = icmp slt i64 %312, %316
  br i1 %317, label %318, label %327

318:                                              ; preds = %311
  %319 = load i32*, i32** %23, align 8
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %322 = load i64, i64* %7, align 8
  %323 = call i32 @PackArrayElementToJsonArray(i32* %319, %struct.TYPE_9__* %320, %struct.TYPE_10__* %321, i64 %322)
  br label %324

324:                                              ; preds = %318
  %325 = load i64, i64* %7, align 8
  %326 = add nsw i64 %325, 1
  store i64 %326, i64* %7, align 8
  br label %311

327:                                              ; preds = %311
  %328 = trunc i64 %308 to i32
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @StrCpy(i8* %310, i32 %328, i32 %331)
  %333 = trunc i64 %308 to i32
  %334 = load i8*, i8** %21, align 8
  %335 = call i32 @StrCat(i8* %310, i32 %333, i8* %334)
  %336 = load i32*, i32** %5, align 8
  %337 = load i32*, i32** %22, align 8
  %338 = call i32 @JsonSet(i32* %336, i8* %310, i32* %337)
  %339 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %339)
  br label %340

340:                                              ; preds = %327, %298
  br label %341

341:                                              ; preds = %340, %292
  br label %353

342:                                              ; preds = %287
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load i32*, i32** %5, align 8
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %351 = call i32 @PackElementToJsonObject(i32* %348, %struct.TYPE_9__* %349, %struct.TYPE_10__* %350, i64 0)
  br label %352

352:                                              ; preds = %347, %342
  br label %353

353:                                              ; preds = %352, %341
  br label %354

354:                                              ; preds = %353
  %355 = load i64, i64* %6, align 8
  %356 = add nsw i64 %355, 1
  store i64 %356, i64* %6, align 8
  br label %269

357:                                              ; preds = %269
  %358 = load i32*, i32** %9, align 8
  %359 = call i32 @ReleaseStrList(i32* %358)
  %360 = load i32*, i32** %4, align 8
  store i32* %360, i32** %2, align 8
  br label %361

361:                                              ; preds = %357, %28
  %362 = load i32*, i32** %2, align 8
  ret i32* %362
}

declare dso_local i32* @JsonNewObject(...) #1

declare dso_local i32* @NewStrList(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @AddStrToStrListDistinct(i32*, i8*) #1

declare dso_local i32* @JsonValueGetObject(i32*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32** @ZeroMalloc(i32) #1

declare dso_local i32* @JsonNewArray(...) #1

declare dso_local i32* @JsonArray(i32*) #1

declare dso_local i32 @JsonSet(i32*, i8*, i32*) #1

declare dso_local i32 @JsonArrayAdd(i32*, i32*) #1

declare dso_local i32 @PackElementToJsonObject(i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @Free(i32**) #1

declare dso_local i8* @DetermineJsonSuffixForPackElement(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PackArrayElementToJsonArray(i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ReleaseStrList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
