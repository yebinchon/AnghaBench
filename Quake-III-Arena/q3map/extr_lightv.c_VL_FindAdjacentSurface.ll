; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_FindAdjacentSurface.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_FindAdjacentSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, i32, i32, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, float**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@lsurfaceTest = common dso_local global %struct.TYPE_8__** null, align 8
@numDrawSurfaces = common dso_local global i32 0, align 4
@drawSurfaces = common dso_local global %struct.TYPE_10__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VL_FindAdjacentSurface(i32 %0, i32 %1, i64* %2, i64* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @lsurfaceTest, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %26, i64 %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %25, align 8
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %290, %7
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @numDrawSurfaces, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %293

41:                                               ; preds = %37
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %290

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @lsurfaceTest, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %19, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %290

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %290

61:                                               ; preds = %55
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @drawSurfaces, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %21, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %290

71:                                               ; preds = %61
  %72 = load i64*, i64** %11, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i64*, i64** %24, align 8
  %77 = call i32 @VectorSubtract(i64* %72, i32 %75, i64* %76)
  %78 = load i64*, i64** %24, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = call double @fabs(i64 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fcmp ogt double %81, %84
  br i1 %85, label %104, label %86

86:                                               ; preds = %71
  %87 = load i64*, i64** %24, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = call double @fabs(i64 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = fcmp ogt double %90, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load i64*, i64** %24, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = call double @fabs(i64 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fcmp ogt double %99, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %95, %86, %71
  %105 = load i64*, i64** %12, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i64*, i64** %24, align 8
  %110 = call i32 @VectorSubtract(i64* %105, i32 %108, i64* %109)
  %111 = load i64*, i64** %24, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = call double @fabs(i64 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = fcmp ogt double %114, %117
  br i1 %118, label %137, label %119

119:                                              ; preds = %104
  %120 = load i64*, i64** %24, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  %122 = load i64, i64* %121, align 8
  %123 = call double @fabs(i64 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load double, double* %125, align 8
  %127 = fcmp ogt double %123, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %119
  %129 = load i64*, i64** %24, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = call double @fabs(i64 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = fcmp ogt double %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128, %119, %104
  br label %290

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %95
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %286, %139
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %289

146:                                              ; preds = %140
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  store %struct.TYPE_9__* %152, %struct.TYPE_9__** %20, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call double @DotProduct(i32 %156, i32 %159)
  %161 = fcmp olt double %160, 9.000000e-01
  br i1 %161, label %162, label %174

162:                                              ; preds = %146
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %289

173:                                              ; preds = %167, %162
  br label %286

174:                                              ; preds = %146
  store i32 0, i32* %18, align 4
  br label %175

175:                                              ; preds = %282, %174
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %285

181:                                              ; preds = %175
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load float**, float*** %183, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float*, float** %184, i64 %186
  %188 = load float*, float** %187, align 8
  store float* %188, float** %22, align 8
  %189 = load i64*, i64** %12, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = sitofp i64 %191 to float
  %193 = load float*, float** %22, align 8
  %194 = getelementptr inbounds float, float* %193, i64 0
  %195 = load float, float* %194, align 4
  %196 = fsub float %192, %195
  %197 = fptosi float %196 to i64
  %198 = call double @fabs(i64 %197)
  %199 = fcmp olt double %198, 1.000000e-01
  br i1 %199, label %200, label %281

200:                                              ; preds = %181
  %201 = load i64*, i64** %12, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 1
  %203 = load i64, i64* %202, align 8
  %204 = sitofp i64 %203 to float
  %205 = load float*, float** %22, align 8
  %206 = getelementptr inbounds float, float* %205, i64 1
  %207 = load float, float* %206, align 4
  %208 = fsub float %204, %207
  %209 = fptosi float %208 to i64
  %210 = call double @fabs(i64 %209)
  %211 = fcmp olt double %210, 1.000000e-01
  br i1 %211, label %212, label %281

212:                                              ; preds = %200
  %213 = load i64*, i64** %12, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 2
  %215 = load i64, i64* %214, align 8
  %216 = sitofp i64 %215 to float
  %217 = load float*, float** %22, align 8
  %218 = getelementptr inbounds float, float* %217, i64 2
  %219 = load float, float* %218, align 4
  %220 = fsub float %216, %219
  %221 = fptosi float %220 to i64
  %222 = call double @fabs(i64 %221)
  %223 = fcmp olt double %222, 1.000000e-01
  br i1 %223, label %224, label %281

224:                                              ; preds = %212
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load float**, float*** %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, 1
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = srem i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float*, float** %227, i64 %234
  %236 = load float*, float** %235, align 8
  store float* %236, float** %23, align 8
  %237 = load i64*, i64** %11, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  %239 = load i64, i64* %238, align 8
  %240 = sitofp i64 %239 to float
  %241 = load float*, float** %23, align 8
  %242 = getelementptr inbounds float, float* %241, i64 0
  %243 = load float, float* %242, align 4
  %244 = fsub float %240, %243
  %245 = fptosi float %244 to i64
  %246 = call double @fabs(i64 %245)
  %247 = fcmp olt double %246, 1.000000e-01
  br i1 %247, label %248, label %280

248:                                              ; preds = %224
  %249 = load i64*, i64** %11, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 1
  %251 = load i64, i64* %250, align 8
  %252 = sitofp i64 %251 to float
  %253 = load float*, float** %23, align 8
  %254 = getelementptr inbounds float, float* %253, i64 1
  %255 = load float, float* %254, align 4
  %256 = fsub float %252, %255
  %257 = fptosi float %256 to i64
  %258 = call double @fabs(i64 %257)
  %259 = fcmp olt double %258, 1.000000e-01
  br i1 %259, label %260, label %280

260:                                              ; preds = %248
  %261 = load i64*, i64** %11, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 2
  %263 = load i64, i64* %262, align 8
  %264 = sitofp i64 %263 to float
  %265 = load float*, float** %23, align 8
  %266 = getelementptr inbounds float, float* %265, i64 2
  %267 = load float, float* %266, align 4
  %268 = fsub float %264, %267
  %269 = fptosi float %268 to i64
  %270 = call double @fabs(i64 %269)
  %271 = fcmp olt double %270, 1.000000e-01
  br i1 %271, label %272, label %280

272:                                              ; preds = %260
  %273 = load i32, i32* %16, align 4
  %274 = load i32*, i32** %13, align 8
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* %17, align 4
  %276 = load i32*, i32** %14, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* %18, align 4
  %278 = load i32*, i32** %15, align 8
  store i32 %277, i32* %278, align 4
  %279 = load i32, i32* @qtrue, align 4
  store i32 %279, i32* %8, align 4
  br label %295

280:                                              ; preds = %260, %248, %224
  br label %281

281:                                              ; preds = %280, %212, %200, %181
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %18, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %18, align 4
  br label %175

285:                                              ; preds = %175
  br label %286

286:                                              ; preds = %285, %173
  %287 = load i32, i32* %17, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %17, align 4
  br label %140

289:                                              ; preds = %172, %140
  br label %290

290:                                              ; preds = %289, %137, %70, %60, %54, %45
  %291 = load i32, i32* %16, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %16, align 4
  br label %37

293:                                              ; preds = %37
  %294 = load i32, i32* @qfalse, align 4
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %293, %272
  %296 = load i32, i32* %8, align 4
  ret i32 %296
}

declare dso_local i32 @VectorSubtract(i64*, i32, i64*) #1

declare dso_local double @fabs(i64) #1

declare dso_local double @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
