; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightmaps.c_AllocateLightmapForPatch.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightmaps.c_AllocateLightmapForPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { float* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_19__* }

@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@samplesize = common dso_local global i32 0, align 4
@c_exactLightmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Entity %i, brush %i: Lightmap allocation failed\00", align 1
@numLightmaps = common dso_local global i64 0, align 8
@originalWidths = common dso_local global i32* null, align 8
@originalHeights = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AllocateLightmapForPatch(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %21 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %6, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %40, align 8
  %41 = bitcast %struct.TYPE_17__* %13 to { i64, %struct.TYPE_19__* }*
  %42 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %41, i32 0, i32 1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = call %struct.TYPE_17__* @SubdivideMesh(i64 %43, %struct.TYPE_19__* %45, i32 8, i32 999)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %16, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %48 = bitcast %struct.TYPE_17__* %47 to { i64, %struct.TYPE_19__* }*
  %49 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %48, i32 0, i32 1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = call i32 @PutMeshOnCurve(i64 %50, %struct.TYPE_19__* %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %55 = call %struct.TYPE_17__* @RemoveLinearMeshColumnsRows(%struct.TYPE_17__* %54)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %15, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %57 = call i32 @FreeMesh(%struct.TYPE_17__* %56)
  %58 = load i32, i32* @samplesize, align 4
  store i32 %58, i32* %20, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %1
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %20, align 4
  br label %71

71:                                               ; preds = %65, %1
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %75 = call %struct.TYPE_17__* @SubdivideMeshQuads(%struct.TYPE_17__* %72, i32 %73, i32 %74, i32* %24, i32* %27)
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %14, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %83 = call i32 @FreeMesh(%struct.TYPE_17__* %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* @c_exactLightmap, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* @c_exactLightmap, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @AllocLMBlock(i32 %89, i32 %90, i32* %9, i32* %10)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %71
  %94 = call i32 (...) @PrepareNewLightmap()
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @AllocLMBlock(i32 %95, i32 %96, i32* %9, i32* %10)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 7
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %109)
  br label %111

111:                                              ; preds = %99, %93
  br label %112

112:                                              ; preds = %111, %71
  %113 = load i64, i64* @numLightmaps, align 8
  %114 = sub nsw i64 %113, 1
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 6
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %245, %112
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %248

135:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %150, %135
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i32*, i32** @originalWidths, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %3, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %153

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %136

153:                                              ; preds = %148, %136
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* %7, align 4
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %161, %162
  %164 = sitofp i32 %163 to float
  store float %164, float* %11, align 4
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %241, %160
  %166 = load i32, i32* %4, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %244

171:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %186, %171
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %172
  %177 = load i32*, i32** @originalHeights, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %189

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %172

189:                                              ; preds = %184, %172
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %193, %189
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %197, %198
  %200 = sitofp i32 %199 to float
  store float %200, float* %12, align 4
  %201 = load float, float* %11, align 4
  %202 = fpext float %201 to double
  %203 = fadd double %202, 5.000000e-01
  %204 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %205 = sitofp i32 %204 to double
  %206 = fdiv double %203, %205
  %207 = fptrunc double %206 to float
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* %4, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = mul nsw i32 %210, %213
  %215 = add nsw i32 %209, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load float*, float** %218, align 8
  %220 = getelementptr inbounds float, float* %219, i64 0
  store float %207, float* %220, align 4
  %221 = load float, float* %12, align 4
  %222 = fpext float %221 to double
  %223 = fadd double %222, 5.000000e-01
  %224 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %225 = sitofp i32 %224 to double
  %226 = fdiv double %223, %225
  %227 = fptrunc double %226 to float
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %229 = load i32, i32* %3, align 4
  %230 = load i32, i32* %4, align 4
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = mul nsw i32 %230, %233
  %235 = add nsw i32 %229, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = load float*, float** %238, align 8
  %240 = getelementptr inbounds float, float* %239, i64 1
  store float %227, float* %240, align 4
  br label %241

241:                                              ; preds = %196
  %242 = load i32, i32* %4, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %4, align 4
  br label %165

244:                                              ; preds = %165
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %3, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %3, align 4
  br label %129

248:                                              ; preds = %129
  %249 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %249)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_17__* @SubdivideMesh(i64, %struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_17__* @RemoveLinearMeshColumnsRows(%struct.TYPE_17__*) #2

declare dso_local i32 @FreeMesh(%struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_17__* @SubdivideMeshQuads(%struct.TYPE_17__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @AllocLMBlock(i32, i32, i32*, i32*) #2

declare dso_local i32 @PrepareNewLightmap(...) #2

declare dso_local i32 @Error(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
