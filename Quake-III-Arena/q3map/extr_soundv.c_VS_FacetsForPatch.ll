; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_FacetsForPatch.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_FacetsForPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_24__*, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i32* }

@LIGHTMAP_SIZE = common dso_local global i32 0, align 4
@drawVerts = common dso_local global i32* null, align 8
@samplesize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Mesh lightmap miscount\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VS_FacetsForPatch(%struct.TYPE_27__* %0, i32 %1, %struct.TYPE_24__* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_25__, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %8, align 8
  %26 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %23, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %24, align 8
  %30 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %25, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load i32*, i32** @drawVerts, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  store i32* %45, i32** %46, align 8
  %47 = call %struct.TYPE_25__* @SubdivideMesh(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8 %19, i32 8, i32 999)
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %22, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %49 = call i32 @PutMeshOnCurve(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8 %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %51 = call i32 @MakeMeshNormals(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8 %50)
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %53 = call %struct.TYPE_25__* @RemoveLinearMeshColumnsRows(%struct.TYPE_25__* %52)
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %20, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %55 = call i32 @FreeMesh(%struct.TYPE_25__* %54)
  %56 = load i32, i32* @samplesize, align 4
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %61, %4
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %74 = call %struct.TYPE_25__* @SubdivideMeshQuads(%struct.TYPE_25__* %71, i32 %72, i32 %73, i32* %29, i32* %32)
  store %struct.TYPE_25__* %74, %struct.TYPE_25__** %21, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 5
  store %struct.TYPE_25__* %75, %struct.TYPE_25__** %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %70
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85, %70
  %94 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %85
  br label %105

96:                                               ; preds = %65
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 5
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %98, align 8
  %99 = mul nuw i64 4, %27
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memset(i32* %29, i32 0, i32 %100)
  %102 = mul nuw i64 4, %31
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memset(i32* %32, i32 0, i32 %103)
  br label %105

105:                                              ; preds = %96, %95
  %106 = load i32, i32* @qtrue, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @qfalse, align 4
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 1
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 1
  %120 = mul nsw i64 %115, %119
  %121 = mul nsw i64 %120, 2
  %122 = trunc i64 %121 to i32
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = mul i64 16, %128
  %130 = trunc i64 %129 to i32
  %131 = call %struct.TYPE_28__* @malloc(i32 %130)
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 1
  store %struct.TYPE_28__* %131, %struct.TYPE_28__** %133, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 2
  store %struct.TYPE_24__* %134, %struct.TYPE_24__** %136, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %364, %105
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, 1
  %144 = icmp slt i64 %139, %143
  br i1 %144, label %145, label %367

145:                                              ; preds = %137
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %354, %145
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, 1
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %357

154:                                              ; preds = %146
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = mul nsw i64 %159, %162
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32* %167, i32** %13, align 8
  %168 = load i32*, i32** %13, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  store i32* %169, i32** %14, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32* %175, i32** %15, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32* %180, i32** %16, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i64 %187
  %189 = load i32*, i32** %13, align 8
  %190 = load i32*, i32** %16, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = load i32*, i32** %14, align 8
  %193 = call i64 @VS_GenerateFacetFor4Points(%struct.TYPE_27__* %181, %struct.TYPE_24__* %182, %struct.TYPE_28__* %188, i32* %189, i32* %190, i32* %191, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %236

195:                                              ; preds = %154
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %198, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  store i32 %196, i32* %203, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %206, align 8
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 1
  store i32 %204, i32* %211, align 4
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %29, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %217, align 8
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 2
  store i32 %215, i32* %222, align 4
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %32, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %228, align 8
  %230 = load i32, i32* %17, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 3
  store i32 %226, i32* %233, align 4
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  br label %347

236:                                              ; preds = %154
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %240, align 8
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i64 %243
  %245 = load i32*, i32** %13, align 8
  %246 = load i32*, i32** %16, align 8
  %247 = load i32*, i32** %15, align 8
  %248 = call i64 @VS_GenerateFacetFor3Points(%struct.TYPE_27__* %237, %struct.TYPE_24__* %238, %struct.TYPE_28__* %244, i32* %245, i32* %246, i32* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %291

250:                                              ; preds = %236
  %251 = load i32, i32* %11, align 4
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %253, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  store i32 %251, i32* %258, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %261, align 8
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 1
  store i32 %259, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %29, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %272, align 8
  %274 = load i32, i32* %17, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 2
  store i32 %270, i32* %277, align 4
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %32, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %283, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 3
  store i32 %281, i32* %288, align 4
  %289 = load i32, i32* %17, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %17, align 4
  br label %291

291:                                              ; preds = %250, %236
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %295, align 8
  %297 = load i32, i32* %17, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i64 %298
  %300 = load i32*, i32** %13, align 8
  %301 = load i32*, i32** %15, align 8
  %302 = load i32*, i32** %14, align 8
  %303 = call i64 @VS_GenerateFacetFor3Points(%struct.TYPE_27__* %292, %struct.TYPE_24__* %293, %struct.TYPE_28__* %299, i32* %300, i32* %301, i32* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %346

305:                                              ; preds = %291
  %306 = load i32, i32* %11, align 4
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %308, align 8
  %310 = load i32, i32* %17, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 0
  store i32 %306, i32* %313, align 4
  %314 = load i32, i32* %12, align 4
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %316, align 8
  %318 = load i32, i32* %17, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 1
  store i32 %314, i32* %321, align 4
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %29, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %327, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 2
  store i32 %325, i32* %332, align 4
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %32, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %338, align 8
  %340 = load i32, i32* %17, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 3
  store i32 %336, i32* %343, align 4
  %344 = load i32, i32* %17, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %17, align 4
  br label %346

346:                                              ; preds = %305, %291
  br label %347

347:                                              ; preds = %346, %195
  %348 = load i32, i32* %10, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %32, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %12, align 4
  br label %354

354:                                              ; preds = %347
  %355 = load i32, i32* %10, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %10, align 4
  br label %146

357:                                              ; preds = %146
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %29, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %11, align 4
  %363 = add nsw i32 %362, %361
  store i32 %363, i32* %11, align 4
  br label %364

364:                                              ; preds = %357
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %9, align 4
  br label %137

367:                                              ; preds = %137
  %368 = load i32, i32* %17, align 4
  %369 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i32 0, i32 0
  store i32 %368, i32* %370, align 8
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %372 = call i32 @FreeMesh(%struct.TYPE_25__* %371)
  %373 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %373)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_25__* @SubdivideMesh(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8, i32, i32) #2

declare dso_local i32 @PutMeshOnCurve(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8) #2

declare dso_local i32 @MakeMeshNormals(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8) #2

declare dso_local %struct.TYPE_25__* @RemoveLinearMeshColumnsRows(%struct.TYPE_25__*) #2

declare dso_local i32 @FreeMesh(%struct.TYPE_25__*) #2

declare dso_local %struct.TYPE_25__* @SubdivideMeshQuads(%struct.TYPE_25__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_28__* @malloc(i32) #2

declare dso_local i64 @VS_GenerateFacetFor4Points(%struct.TYPE_27__*, %struct.TYPE_24__*, %struct.TYPE_28__*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @VS_GenerateFacetFor3Points(%struct.TYPE_27__*, %struct.TYPE_24__*, %struct.TYPE_28__*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
