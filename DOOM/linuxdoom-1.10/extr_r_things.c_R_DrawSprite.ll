; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawSprite.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawSprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i64, i64, i16*, i16*, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i32, i32 }

@SCREENWIDTH = common dso_local global i32 0, align 4
@ds_p = common dso_local global %struct.TYPE_9__* null, align 8
@drawsegs = common dso_local global %struct.TYPE_9__* null, align 8
@SIL_BOTTOM = common dso_local global i32 0, align 4
@SIL_TOP = common dso_local global i32 0, align 4
@viewheight = common dso_local global i16 0, align 2
@mfloorclip = common dso_local global i16* null, align 8
@mceilingclip = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawSprite(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %13 = load i32, i32* @SCREENWIDTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i16, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @SCREENWIDTH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i16, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %36, %1
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %19, i64 %31
  store i16 -2, i16* %32, align 2
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %16, i64 %34
  store i16 -2, i16* %35, align 2
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ds_p, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 -1
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %3, align 8
  br label %42

42:                                               ; preds = %310, %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drawsegs, align 8
  %45 = icmp uge %struct.TYPE_9__* %43, %44
  br i1 %45, label %46, label %313

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %72, label %54

54:                                               ; preds = %46
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %54, %46
  br label %310

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  br label %89

85:                                               ; preds = %73
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i32 [ %84, %81 ], [ %88, %85 ]
  store i32 %90, i32* %8, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  br label %106

102:                                              ; preds = %89
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %101, %98 ], [ %105, %102 ]
  store i32 %107, i32* %9, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %11, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %10, align 8
  br label %129

122:                                              ; preds = %106
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %11, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %122, %115
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %130, %133
  br i1 %134, label %153, label %135

135:                                              ; preds = %129
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %135
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @R_PointOnSegSide(i32 %144, i32 %147, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %141, %129
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 9
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @R_RenderMaskedSegRange(%struct.TYPE_9__* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %153
  br label %310

164:                                              ; preds = %141, %135
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %12, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = icmp sge i64 %170, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %164
  %176 = load i32, i32* @SIL_BOTTOM, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %12, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %175, %164
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp sle i64 %183, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = load i32, i32* @SIL_TOP, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %12, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %188, %180
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %225

196:                                              ; preds = %193
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %221, %196
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp sle i32 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %198
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i16, i16* %16, i64 %204
  %206 = load i16, i16* %205, align 2
  %207 = sext i16 %206 to i32
  %208 = icmp eq i32 %207, -2
  br i1 %208, label %209, label %220

209:                                              ; preds = %202
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 7
  %212 = load i16*, i16** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i16, i16* %212, i64 %214
  %216 = load i16, i16* %215, align 2
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i16, i16* %16, i64 %218
  store i16 %216, i16* %219, align 2
  br label %220

220:                                              ; preds = %209, %202
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %198

224:                                              ; preds = %198
  br label %309

225:                                              ; preds = %193
  %226 = load i32, i32* %12, align 4
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %228, label %257

228:                                              ; preds = %225
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %253, %228
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %256

234:                                              ; preds = %230
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i16, i16* %19, i64 %236
  %238 = load i16, i16* %237, align 2
  %239 = sext i16 %238 to i32
  %240 = icmp eq i32 %239, -2
  br i1 %240, label %241, label %252

241:                                              ; preds = %234
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 8
  %244 = load i16*, i16** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i16, i16* %244, i64 %246
  %248 = load i16, i16* %247, align 2
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i16, i16* %19, i64 %250
  store i16 %248, i16* %251, align 2
  br label %252

252:                                              ; preds = %241, %234
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %7, align 4
  br label %230

256:                                              ; preds = %230
  br label %308

257:                                              ; preds = %225
  %258 = load i32, i32* %12, align 4
  %259 = icmp eq i32 %258, 3
  br i1 %259, label %260, label %307

260:                                              ; preds = %257
  %261 = load i32, i32* %8, align 4
  store i32 %261, i32* %7, align 4
  br label %262

262:                                              ; preds = %303, %260
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %9, align 4
  %265 = icmp sle i32 %263, %264
  br i1 %265, label %266, label %306

266:                                              ; preds = %262
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i16, i16* %16, i64 %268
  %270 = load i16, i16* %269, align 2
  %271 = sext i16 %270 to i32
  %272 = icmp eq i32 %271, -2
  br i1 %272, label %273, label %284

273:                                              ; preds = %266
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 7
  %276 = load i16*, i16** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i16, i16* %276, i64 %278
  %280 = load i16, i16* %279, align 2
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i16, i16* %16, i64 %282
  store i16 %280, i16* %283, align 2
  br label %284

284:                                              ; preds = %273, %266
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i16, i16* %19, i64 %286
  %288 = load i16, i16* %287, align 2
  %289 = sext i16 %288 to i32
  %290 = icmp eq i32 %289, -2
  br i1 %290, label %291, label %302

291:                                              ; preds = %284
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 8
  %294 = load i16*, i16** %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %294, i64 %296
  %298 = load i16, i16* %297, align 2
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i16, i16* %19, i64 %300
  store i16 %298, i16* %301, align 2
  br label %302

302:                                              ; preds = %291, %284
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %7, align 4
  br label %262

306:                                              ; preds = %262
  br label %307

307:                                              ; preds = %306, %257
  br label %308

308:                                              ; preds = %307, %256
  br label %309

309:                                              ; preds = %308, %224
  br label %310

310:                                              ; preds = %309, %163, %72
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 -1
  store %struct.TYPE_9__* %312, %struct.TYPE_9__** %3, align 8
  br label %42

313:                                              ; preds = %42
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  store i32 %316, i32* %7, align 4
  br label %317

317:                                              ; preds = %347, %313
  %318 = load i32, i32* %7, align 4
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp sle i32 %318, %321
  br i1 %322, label %323, label %350

323:                                              ; preds = %317
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i16, i16* %16, i64 %325
  %327 = load i16, i16* %326, align 2
  %328 = sext i16 %327 to i32
  %329 = icmp eq i32 %328, -2
  br i1 %329, label %330, label %335

330:                                              ; preds = %323
  %331 = load i16, i16* @viewheight, align 2
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i16, i16* %16, i64 %333
  store i16 %331, i16* %334, align 2
  br label %335

335:                                              ; preds = %330, %323
  %336 = load i32, i32* %7, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i16, i16* %19, i64 %337
  %339 = load i16, i16* %338, align 2
  %340 = sext i16 %339 to i32
  %341 = icmp eq i32 %340, -2
  br i1 %341, label %342, label %346

342:                                              ; preds = %335
  %343 = load i32, i32* %7, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i16, i16* %19, i64 %344
  store i16 -1, i16* %345, align 2
  br label %346

346:                                              ; preds = %342, %335
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %7, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %7, align 4
  br label %317

350:                                              ; preds = %317
  store i16* %16, i16** @mfloorclip, align 8
  store i16* %19, i16** @mceilingclip, align 8
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @R_DrawVisSprite(%struct.TYPE_8__* %351, i32 %354, i32 %357)
  %359 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %359)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @R_PointOnSegSide(i32, i32, i32) #2

declare dso_local i32 @R_RenderMaskedSegRange(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @R_DrawVisSprite(%struct.TYPE_8__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
