; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_VisChopWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_visflow.c_VisChopWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32** }
%struct.TYPE_9__ = type { i32*, i32 }

@ON_EPSILON = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4
@MAX_POINTS_ON_FIXED_WINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @VisChopWinding(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca [128 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %81, %3
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @DotProduct(i32* %34, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ON_EPSILON, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %27
  %52 = load i32, i32* @SIDE_FRONT, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %72

56:                                               ; preds = %27
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ON_EPSILON, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @SIDE_BACK, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %71

66:                                               ; preds = %56
  %67 = load i32, i32* @SIDE_ON, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %21

84:                                               ; preds = %21
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %4, align 8
  br label %333

90:                                               ; preds = %84
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @FreeStackWinding(%struct.TYPE_8__* %95, i32* %96)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %333

98:                                               ; preds = %90
  %99 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = call %struct.TYPE_8__* @AllocStackWinding(i32* %109)
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %17, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %325, %98
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %328

119:                                              ; preds = %113
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %14, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @FreeStackWinding(%struct.TYPE_8__* %133, i32* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %4, align 8
  br label %333

137:                                              ; preds = %119
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SIDE_ON, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %137
  %145 = load i32*, i32** %14, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32**, i32*** %147, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %148, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @VectorCopy(i32* %145, i32* %154)
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  br label %325

160:                                              ; preds = %137
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SIDE_FRONT, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %160
  %168 = load i32*, i32** %14, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i32**, i32*** %170, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %171, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @VectorCopy(i32* %168, i32* %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %167, %160
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SIDE_ON, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %202, label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %196, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %191, %183
  br label %325

203:                                              ; preds = %191
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @MAX_POINTS_ON_FIXED_WINDING, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = call i32 @FreeStackWinding(%struct.TYPE_8__* %210, i32* %211)
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %213, %struct.TYPE_8__** %4, align 8
  br label %333

214:                                              ; preds = %203
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = srem i32 %219, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %217, i64 %224
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** %15, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %234, %239
  %241 = sdiv i32 %230, %240
  store i32 %241, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %306, %214
  %243 = load i32, i32* %13, align 4
  %244 = icmp slt i32 %243, 3
  br i1 %244, label %245, label %309

245:                                              ; preds = %242
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %262

254:                                              ; preds = %245
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load i32*, i32** %16, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %257, i32* %261, align 4
  br label %305

262:                                              ; preds = %245
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %280

271:                                              ; preds = %262
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 0, %274
  %276 = load i32*, i32** %16, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %275, i32* %279, align 4
  br label %304

280:                                              ; preds = %262
  %281 = load i32*, i32** %14, align 8
  %282 = load i32, i32* %13, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load i32*, i32** %15, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %14, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %291, %296
  %298 = mul nsw i32 %286, %297
  %299 = add nsw i32 %285, %298
  %300 = load i32*, i32** %16, align 8
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %299, i32* %303, align 4
  br label %304

304:                                              ; preds = %280, %271
  br label %305

305:                                              ; preds = %304, %254
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %13, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %13, align 4
  br label %242

309:                                              ; preds = %242
  %310 = load i32*, i32** %16, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i32**, i32*** %312, align 8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32*, i32** %313, i64 %317
  %319 = load i32*, i32** %318, align 8
  %320 = call i32 @VectorCopy(i32* %310, i32* %319)
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %309, %202, %144
  %326 = load i32, i32* %12, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %12, align 4
  br label %113

328:                                              ; preds = %113
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %330 = load i32*, i32** %6, align 8
  %331 = call i32 @FreeStackWinding(%struct.TYPE_8__* %329, i32* %330)
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %332, %struct.TYPE_8__** %4, align 8
  br label %333

333:                                              ; preds = %328, %209, %132, %94, %88
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %334
}

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @FreeStackWinding(%struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_8__* @AllocStackWinding(i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
