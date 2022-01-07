; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_ShiftPatchLightmaps.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_ShiftPatchLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { double* }

@numDrawSurfaces = common dso_local global i32 0, align 4
@lsurfaceTest = common dso_local global i32** null, align 8
@drawSurfaces = common dso_local global %struct.TYPE_5__* null, align 8
@MST_PATCH = common dso_local global i64 0, align 8
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@lightFloats = common dso_local global float* null, align 8
@drawVerts = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_ShiftPatchLightmaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %248, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @numDrawSurfaces, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %251

14:                                               ; preds = %10
  %15 = load i32**, i32*** @lsurfaceTest, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %248

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @drawSurfaces, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %248

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MST_PATCH, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %248

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %113, %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %116

47:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %109, %47
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %49, %52
  br i1 %53, label %54, label %112

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %59, %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %5, align 4
  %74 = load float*, float** @lightFloats, align 8
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %74, i64 %77
  store float* %78, float** %9, align 8
  %79 = load float*, float** @lightFloats, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %79, i64 %83
  %85 = getelementptr inbounds float, float* %84, i64 0
  %86 = load float, float* %85, align 4
  %87 = load float*, float** %9, align 8
  %88 = getelementptr inbounds float, float* %87, i64 0
  store float %86, float* %88, align 4
  %89 = load float*, float** @lightFloats, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, 1
  %92 = mul nsw i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %89, i64 %93
  %95 = getelementptr inbounds float, float* %94, i64 1
  %96 = load float, float* %95, align 4
  %97 = load float*, float** %9, align 8
  %98 = getelementptr inbounds float, float* %97, i64 1
  store float %96, float* %98, align 4
  %99 = load float*, float** @lightFloats, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 %100, 1
  %102 = mul nsw i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %99, i64 %103
  %105 = getelementptr inbounds float, float* %104, i64 2
  %106 = load float, float* %105, align 4
  %107 = load float*, float** %9, align 8
  %108 = getelementptr inbounds float, float* %107, i64 2
  store float %106, float* %108, align 4
  br label %109

109:                                              ; preds = %54
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %48

112:                                              ; preds = %48
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %3, align 4
  br label %44

116:                                              ; preds = %44
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %192, %116
  %121 = load i32, i32* %4, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %195

123:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %188, %123
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp sle i32 %125, %128
  br i1 %129, label %130, label %191

130:                                              ; preds = %124
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %135, %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %5, align 4
  %150 = load float*, float** @lightFloats, align 8
  %151 = load i32, i32* %5, align 4
  %152 = mul nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %150, i64 %153
  store float* %154, float** %9, align 8
  %155 = load float*, float** @lightFloats, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %158 = sub nsw i32 %156, %157
  %159 = mul nsw i32 %158, 3
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %155, i64 %160
  %162 = getelementptr inbounds float, float* %161, i64 0
  %163 = load float, float* %162, align 4
  %164 = load float*, float** %9, align 8
  %165 = getelementptr inbounds float, float* %164, i64 0
  store float %163, float* %165, align 4
  %166 = load float*, float** @lightFloats, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %169 = sub nsw i32 %167, %168
  %170 = mul nsw i32 %169, 3
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %166, i64 %171
  %173 = getelementptr inbounds float, float* %172, i64 1
  %174 = load float, float* %173, align 4
  %175 = load float*, float** %9, align 8
  %176 = getelementptr inbounds float, float* %175, i64 1
  store float %174, float* %176, align 4
  %177 = load float*, float** @lightFloats, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %180 = sub nsw i32 %178, %179
  %181 = mul nsw i32 %180, 3
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %177, i64 %182
  %184 = getelementptr inbounds float, float* %183, i64 2
  %185 = load float, float* %184, align 4
  %186 = load float*, float** %9, align 8
  %187 = getelementptr inbounds float, float* %186, i64 2
  store float %185, float* %187, align 4
  br label %188

188:                                              ; preds = %130
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %3, align 4
  br label %124

191:                                              ; preds = %124
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %4, align 4
  br label %120

195:                                              ; preds = %120
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drawVerts, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %199
  store %struct.TYPE_6__* %200, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %236, %195
  %202 = load i32, i32* %2, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %205, %208
  %210 = icmp slt i32 %202, %209
  br i1 %210, label %211, label %239

211:                                              ; preds = %201
  %212 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %213 = sitofp i32 %212 to double
  %214 = fdiv double 5.000000e-01, %213
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %216 = load i32, i32* %2, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load double*, double** %219, align 8
  %221 = getelementptr inbounds double, double* %220, i64 0
  %222 = load double, double* %221, align 8
  %223 = fadd double %222, %214
  store double %223, double* %221, align 8
  %224 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %225 = sitofp i32 %224 to double
  %226 = fdiv double 5.000000e-01, %225
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load double*, double** %231, align 8
  %233 = getelementptr inbounds double, double* %232, i64 1
  %234 = load double, double* %233, align 8
  %235 = fadd double %234, %226
  store double %235, double* %233, align 8
  br label %236

236:                                              ; preds = %211
  %237 = load i32, i32* %2, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %2, align 4
  br label %201

239:                                              ; preds = %201
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %239, %39, %32, %22
  %249 = load i32, i32* %1, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %1, align 4
  br label %10

251:                                              ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
