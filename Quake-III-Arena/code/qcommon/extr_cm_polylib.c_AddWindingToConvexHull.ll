; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_polylib.c_AddWindingToConvexHull.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_polylib.c_AddWindingToConvexHull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, float** }

@MAX_HULL_POINTS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddWindingToConvexHull(%struct.TYPE_8__* %0, %struct.TYPE_8__** %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  store float* %2, float** %6, align 8
  %23 = load i32, i32* @MAX_HULL_POINTS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca float*, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* @MAX_HULL_POINTS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca float*, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %30 = load i32, i32* @MAX_HULL_POINTS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca float*, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %33 = load i32, i32* @MAX_HULL_POINTS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call %struct.TYPE_8__* @CopyWinding(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %42, align 8
  store i32 1, i32* %22, align 4
  br label %268

43:                                               ; preds = %3
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load float**, float*** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @Com_Memcpy(float** %26, float** %51, i32 %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %246, %43
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %249

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load float**, float*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float*, float** %66, i64 %68
  %70 = load float*, float** %69, align 8
  store float* %70, float** %10, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %100, %63
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %14, align 4
  %79 = srem i32 %77, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float*, float** %26, i64 %81
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float*, float** %26, i64 %85
  %87 = load float*, float** %86, align 8
  %88 = load float*, float** %12, align 8
  %89 = call i32 @VectorSubtract(float* %83, float* %87, float* %88)
  %90 = load float*, float** %12, align 8
  %91 = load float*, float** %12, align 8
  %92 = call i32 @VectorNormalize2(float* %90, float* %91)
  %93 = load float*, float** %6, align 8
  %94 = load float*, float** %12, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float*, float** %32, i64 %96
  %98 = load float*, float** %97, align 8
  %99 = call i32 @CrossProduct(float* %93, float* %94, float* %98)
  br label %100

100:                                              ; preds = %75
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %71

103:                                              ; preds = %71
  %104 = load i64, i64* @qfalse, align 8
  store i64 %104, i64* %21, align 8
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %144, %103
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %105
  %110 = load float*, float** %10, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float*, float** %26, i64 %112
  %114 = load float*, float** %113, align 8
  %115 = load float*, float** %12, align 8
  %116 = call i32 @VectorSubtract(float* %110, float* %114, float* %115)
  %117 = load float*, float** %12, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float*, float** %32, i64 %119
  %121 = load float*, float** %120, align 8
  %122 = call float @DotProduct(float* %117, float* %121)
  store float %122, float* %13, align 4
  %123 = load float, float* %13, align 4
  %124 = load float, float* @ON_EPSILON, align 4
  %125 = fcmp oge float %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %109
  %127 = load i64, i64* @qtrue, align 8
  store i64 %127, i64* %21, align 8
  br label %128

128:                                              ; preds = %126, %109
  %129 = load float, float* %13, align 4
  %130 = load float, float* @ON_EPSILON, align 4
  %131 = fneg float %130
  %132 = fcmp oge float %129, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i64, i64* @qtrue, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %35, i64 %136
  store i64 %134, i64* %137, align 8
  br label %143

138:                                              ; preds = %128
  %139 = load i64, i64* @qfalse, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %35, i64 %141
  store i64 %139, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %105

147:                                              ; preds = %105
  %148 = load i64, i64* %21, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  br label %246

151:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %175, %151
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %14, align 4
  %159 = srem i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %35, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %14, align 4
  %168 = srem i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %35, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  br label %178

174:                                              ; preds = %164, %156
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %152

178:                                              ; preds = %173, %152
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %246

183:                                              ; preds = %178
  %184 = load float*, float** %10, align 8
  %185 = getelementptr inbounds float*, float** %29, i64 0
  %186 = load float*, float** %185, align 16
  %187 = call i32 @VectorCopy(float* %184, float* %186)
  store i32 1, i32* %15, align 4
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* %14, align 4
  %191 = srem i32 %189, %190
  store i32 %191, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %236, %183
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %239

196:                                              ; preds = %192
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %14, align 4
  %201 = srem i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %35, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %196
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %207, %208
  %210 = add nsw i32 %209, 1
  %211 = load i32, i32* %14, align 4
  %212 = srem i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %35, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  br label %236

218:                                              ; preds = %206, %196
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %219, %220
  %222 = add nsw i32 %221, 1
  %223 = load i32, i32* %14, align 4
  %224 = srem i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float*, float** %26, i64 %225
  %227 = load float*, float** %226, align 8
  store float* %227, float** %11, align 8
  %228 = load float*, float** %11, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float*, float** %29, i64 %230
  %232 = load float*, float** %231, align 8
  %233 = call i32 @VectorCopy(float* %228, float* %232)
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %218, %217
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %192

239:                                              ; preds = %192
  %240 = load i32, i32* %15, align 4
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 8
  %244 = trunc i64 %243 to i32
  %245 = call i32 @Com_Memcpy(float** %26, float** %29, i32 %244)
  br label %246

246:                                              ; preds = %239, %182, %150
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %57

249:                                              ; preds = %57
  %250 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = call i32 @FreeWinding(%struct.TYPE_8__* %251)
  %253 = load i32, i32* %14, align 4
  %254 = call %struct.TYPE_8__* @AllocWinding(i32 %253)
  store %struct.TYPE_8__* %254, %struct.TYPE_8__** %4, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %259 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %258, %struct.TYPE_8__** %259, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load float**, float*** %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = mul i64 %264, 8
  %266 = trunc i64 %265 to i32
  %267 = call i32 @Com_Memcpy(float** %262, float** %26, i32 %266)
  store i32 0, i32* %22, align 4
  br label %268

268:                                              ; preds = %249, %39
  %269 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load i32, i32* %22, align 4
  switch i32 %270, label %272 [
    i32 0, label %271
    i32 1, label %271
  ]

271:                                              ; preds = %268, %268
  ret void

272:                                              ; preds = %268
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @CopyWinding(%struct.TYPE_8__*) #2

declare dso_local i32 @Com_Memcpy(float**, float**, i32) #2

declare dso_local i32 @VectorSubtract(float*, float*, float*) #2

declare dso_local i32 @VectorNormalize2(float*, float*) #2

declare dso_local i32 @CrossProduct(float*, float*, float*) #2

declare dso_local float @DotProduct(float*, float*) #2

declare dso_local i32 @VectorCopy(float*, float*) #2

declare dso_local i32 @FreeWinding(%struct.TYPE_8__*) #2

declare dso_local %struct.TYPE_8__* @AllocWinding(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
