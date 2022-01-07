; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceGrid.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, float**, float**, float***, i32*, i32*, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32*, i32, float*, i32, float*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { float*, float*, float*, float*, i64 }

@MAX_GRID_SIZE = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@SHADER_MAX_INDEXES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SurfaceGrid(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %31 = load i32, i32* @MAX_GRID_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %14, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %35 = load i32, i32* @MAX_GRID_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %46 = or i32 %45, %44
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call float @LodErrorForVolume(i32 %49, i32 %52)
  store float %53, float* %17, align 4
  %54 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %54, align 16
  store i32 1, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %80, %1
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %55
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load float*, float** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = load float, float* %17, align 4
  %71 = fcmp ole float %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %34, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %72, %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %55

83:                                               ; preds = %55
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %34, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  %93 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %93, align 16
  store i32 1, i32* %19, align 4
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %119, %83
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  %104 = load float*, float** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load float, float* %17, align 4
  %110 = fcmp ole float %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %37, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %111, %101
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %94

122:                                              ; preds = %94
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %37, i64 %128
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %418, %122
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %19, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %429

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %162, %137
  %139 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %18, align 4
  %143 = sdiv i32 %141, %142
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  %146 = sub nsw i32 %144, %145
  %147 = load i32, i32* %18, align 4
  %148 = mul nsw i32 %147, 6
  %149 = sdiv i32 %146, %148
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 2
  br i1 %151, label %155, label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %160

155:                                              ; preds = %152, %138
  %156 = call i32 (...) @RB_EndSurface()
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 10), align 8
  %159 = call i32 @RB_BeginSurface(%struct.TYPE_11__* %157, i32 %158)
  br label %161

160:                                              ; preds = %152
  br label %163

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161
  br i1 true, label %138, label %163

163:                                              ; preds = %162, %160
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i32, i32* %12, align 4
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %169, %163
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* %19, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %13, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %178, %172
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 4
  store i32 %183, i32* %20, align 4
  %184 = load float**, float*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 3), align 8
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float*, float** %184, i64 %186
  %188 = load float*, float** %187, align 8
  store float* %188, float** %5, align 8
  %189 = load float**, float*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 4), align 8
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float*, float** %189, i64 %191
  %193 = load float*, float** %192, align 8
  store float* %193, float** %7, align 8
  %194 = load float***, float**** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 5), align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float**, float*** %194, i64 %196
  %198 = load float**, float*** %197, align 8
  %199 = getelementptr inbounds float*, float** %198, i64 0
  %200 = load float*, float** %199, align 8
  store float* %200, float** %6, align 8
  %201 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 9), align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = bitcast i32* %204 to i8*
  store i8* %205, i8** %8, align 8
  %206 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 6), align 8
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32* %209, i32** %22, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %340, %182
  %214 = load i32, i32* %3, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %343

217:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %336, %217
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %339

222:                                              ; preds = %218
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 5
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %37, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %231, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %236
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %34, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 %242
  store %struct.TYPE_8__* %243, %struct.TYPE_8__** %9, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load float*, float** %245, align 8
  %247 = getelementptr inbounds float, float* %246, i64 0
  %248 = load float, float* %247, align 4
  %249 = load float*, float** %5, align 8
  %250 = getelementptr inbounds float, float* %249, i64 0
  store float %248, float* %250, align 4
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load float*, float** %252, align 8
  %254 = getelementptr inbounds float, float* %253, i64 1
  %255 = load float, float* %254, align 4
  %256 = load float*, float** %5, align 8
  %257 = getelementptr inbounds float, float* %256, i64 1
  store float %255, float* %257, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load float*, float** %259, align 8
  %261 = getelementptr inbounds float, float* %260, i64 2
  %262 = load float, float* %261, align 4
  %263 = load float*, float** %5, align 8
  %264 = getelementptr inbounds float, float* %263, i64 2
  store float %262, float* %264, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = load float*, float** %266, align 8
  %268 = getelementptr inbounds float, float* %267, i64 0
  %269 = load float, float* %268, align 4
  %270 = load float*, float** %6, align 8
  %271 = getelementptr inbounds float, float* %270, i64 0
  store float %269, float* %271, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = load float*, float** %273, align 8
  %275 = getelementptr inbounds float, float* %274, i64 1
  %276 = load float, float* %275, align 4
  %277 = load float*, float** %6, align 8
  %278 = getelementptr inbounds float, float* %277, i64 1
  store float %276, float* %278, align 4
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 2
  %281 = load float*, float** %280, align 8
  %282 = getelementptr inbounds float, float* %281, i64 0
  %283 = load float, float* %282, align 4
  %284 = load float*, float** %6, align 8
  %285 = getelementptr inbounds float, float* %284, i64 2
  store float %283, float* %285, align 4
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 2
  %288 = load float*, float** %287, align 8
  %289 = getelementptr inbounds float, float* %288, i64 1
  %290 = load float, float* %289, align 4
  %291 = load float*, float** %6, align 8
  %292 = getelementptr inbounds float, float* %291, i64 3
  store float %290, float* %292, align 4
  %293 = load i64, i64* %23, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %317

295:                                              ; preds = %222
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 3
  %298 = load float*, float** %297, align 8
  %299 = getelementptr inbounds float, float* %298, i64 0
  %300 = load float, float* %299, align 4
  %301 = load float*, float** %7, align 8
  %302 = getelementptr inbounds float, float* %301, i64 0
  store float %300, float* %302, align 4
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 3
  %305 = load float*, float** %304, align 8
  %306 = getelementptr inbounds float, float* %305, i64 1
  %307 = load float, float* %306, align 4
  %308 = load float*, float** %7, align 8
  %309 = getelementptr inbounds float, float* %308, i64 1
  store float %307, float* %309, align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = load float*, float** %311, align 8
  %313 = getelementptr inbounds float, float* %312, i64 2
  %314 = load float, float* %313, align 4
  %315 = load float*, float** %7, align 8
  %316 = getelementptr inbounds float, float* %315, i64 2
  store float %314, float* %316, align 4
  br label %317

317:                                              ; preds = %295, %222
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = inttoptr i64 %320 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = load i8*, i8** %8, align 8
  %324 = bitcast i8* %323 to i32*
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* %21, align 4
  %326 = load i32*, i32** %22, align 8
  %327 = getelementptr inbounds i32, i32* %326, i32 1
  store i32* %327, i32** %22, align 8
  store i32 %325, i32* %326, align 4
  %328 = load float*, float** %5, align 8
  %329 = getelementptr inbounds float, float* %328, i64 4
  store float* %329, float** %5, align 8
  %330 = load float*, float** %7, align 8
  %331 = getelementptr inbounds float, float* %330, i64 4
  store float* %331, float** %7, align 8
  %332 = load float*, float** %6, align 8
  %333 = getelementptr inbounds float, float* %332, i64 4
  store float* %333, float** %6, align 8
  %334 = load i8*, i8** %8, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 4
  store i8* %335, i8** %8, align 8
  br label %336

336:                                              ; preds = %317
  %337 = load i32, i32* %4, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %4, align 4
  br label %218

339:                                              ; preds = %218
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %3, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %3, align 4
  br label %213

343:                                              ; preds = %213
  %344 = load i32, i32* %10, align 4
  %345 = sub nsw i32 %344, 1
  store i32 %345, i32* %26, align 4
  %346 = load i32, i32* %18, align 4
  %347 = sub nsw i32 %346, 1
  store i32 %347, i32* %25, align 4
  %348 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  store i32 %348, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %349

349:                                              ; preds = %415, %343
  %350 = load i32, i32* %3, align 4
  %351 = load i32, i32* %26, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %418

353:                                              ; preds = %349
  store i32 0, i32* %4, align 4
  br label %354

354:                                              ; preds = %411, %353
  %355 = load i32, i32* %4, align 4
  %356 = load i32, i32* %25, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %414

358:                                              ; preds = %354
  %359 = load i32, i32* %20, align 4
  %360 = load i32, i32* %3, align 4
  %361 = load i32, i32* %18, align 4
  %362 = mul nsw i32 %360, %361
  %363 = add nsw i32 %359, %362
  %364 = load i32, i32* %4, align 4
  %365 = add nsw i32 %363, %364
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %27, align 4
  %367 = load i32, i32* %27, align 4
  %368 = sub nsw i32 %367, 1
  store i32 %368, i32* %28, align 4
  %369 = load i32, i32* %28, align 4
  %370 = load i32, i32* %18, align 4
  %371 = add nsw i32 %369, %370
  store i32 %371, i32* %29, align 4
  %372 = load i32, i32* %29, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %30, align 4
  %374 = load i32, i32* %28, align 4
  %375 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %376 = load i32, i32* %24, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  store i32 %374, i32* %378, align 4
  %379 = load i32, i32* %29, align 4
  %380 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %381 = load i32, i32* %24, align 4
  %382 = add nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %380, i64 %383
  store i32 %379, i32* %384, align 4
  %385 = load i32, i32* %27, align 4
  %386 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %387 = load i32, i32* %24, align 4
  %388 = add nsw i32 %387, 2
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %386, i64 %389
  store i32 %385, i32* %390, align 4
  %391 = load i32, i32* %27, align 4
  %392 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %393 = load i32, i32* %24, align 4
  %394 = add nsw i32 %393, 3
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %392, i64 %395
  store i32 %391, i32* %396, align 4
  %397 = load i32, i32* %29, align 4
  %398 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %399 = load i32, i32* %24, align 4
  %400 = add nsw i32 %399, 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %398, i64 %401
  store i32 %397, i32* %402, align 4
  %403 = load i32, i32* %30, align 4
  %404 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %405 = load i32, i32* %24, align 4
  %406 = add nsw i32 %405, 5
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  store i32 %403, i32* %408, align 4
  %409 = load i32, i32* %24, align 4
  %410 = add nsw i32 %409, 6
  store i32 %410, i32* %24, align 4
  br label %411

411:                                              ; preds = %358
  %412 = load i32, i32* %4, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %4, align 4
  br label %354

414:                                              ; preds = %354
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %3, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %3, align 4
  br label %349

418:                                              ; preds = %349
  %419 = load i32, i32* %24, align 4
  store i32 %419, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* %18, align 4
  %422 = mul nsw i32 %420, %421
  %423 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 4
  %425 = load i32, i32* %10, align 4
  %426 = sub nsw i32 %425, 1
  %427 = load i32, i32* %13, align 4
  %428 = add nsw i32 %427, %426
  store i32 %428, i32* %13, align 4
  br label %132

429:                                              ; preds = %132
  %430 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %430)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @LodErrorForVolume(i32, i32) #2

declare dso_local i32 @RB_EndSurface(...) #2

declare dso_local i32 @RB_BeginSurface(%struct.TYPE_11__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
