; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_world.c_SV_LinkEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_world.c_SV_LinkEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { i64, i32, i32, i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32*, i32*, float*, float*, float*, float*, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_TOTAL_ENT_LEAFS = common dso_local global i32 0, align 4
@SOLID_BMODEL = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4
@sv = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@SS_LOADING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Object %i touching 3 areas at %f %f %f\0A\00", align 1
@MAX_ENT_CLUSTERS = common dso_local global i64 0, align 8
@sv_worldSectors = common dso_local global %struct.TYPE_14__* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_LinkEntity(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %19 = load i32, i32* @MAX_TOTAL_ENT_LEAFS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %4, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call %struct.TYPE_15__* @SV_SvEntityForGentity(%struct.TYPE_16__* %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %15, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = call i32 @SV_UnlinkEntity(%struct.TYPE_16__* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @SOLID_BMODEL, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %113

43:                                               ; preds = %32
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CONTENTS_SOLID, align 4
  %49 = load i32, i32* @CONTENTS_BODY, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %108

53:                                               ; preds = %43
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 255
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 255, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 255
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 255, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 32
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %82
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 255
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 255, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %10, align 4
  %99 = shl i32 %98, 16
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 %100, 8
  %102 = or i32 %99, %101
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %112

108:                                              ; preds = %43
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %97
  br label %113

113:                                              ; preds = %112, %38
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load float*, float** %116, align 8
  store float* %117, float** %13, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load float*, float** %120, align 8
  store float* %121, float** %14, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %188

127:                                              ; preds = %113
  %128 = load float*, float** %14, align 8
  %129 = getelementptr inbounds float, float* %128, i64 0
  %130 = load float, float* %129, align 4
  %131 = fcmp une float %130, 0.000000e+00
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = load float*, float** %14, align 8
  %134 = getelementptr inbounds float, float* %133, i64 1
  %135 = load float, float* %134, align 4
  %136 = fcmp une float %135, 0.000000e+00
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load float*, float** %14, align 8
  %139 = getelementptr inbounds float, float* %138, i64 2
  %140 = load float, float* %139, align 4
  %141 = fcmp une float %140, 0.000000e+00
  br i1 %141, label %142, label %188

142:                                              ; preds = %137, %132, %127
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call float @RadiusFromBounds(i32* %146, i32* %150)
  store float %151, float* %16, align 4
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %184, %142
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %153, 3
  br i1 %154, label %155, label %187

155:                                              ; preds = %152
  %156 = load float*, float** %13, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = load float, float* %159, align 4
  %161 = load float, float* %16, align 4
  %162 = fsub float %160, %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load float*, float** %165, align 8
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  store float %162, float* %169, align 4
  %170 = load float*, float** %13, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load float, float* %173, align 4
  %175 = load float, float* %16, align 4
  %176 = fadd float %174, %175
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 6
  %180 = load float*, float** %179, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  store float %176, float* %183, align 4
  br label %184

184:                                              ; preds = %155
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %152

187:                                              ; preds = %152
  br label %209

188:                                              ; preds = %137, %113
  %189 = load float*, float** %13, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 5
  %197 = load float*, float** %196, align 8
  %198 = call i32 @VectorAdd(float* %189, i32* %193, float* %197)
  %199 = load float*, float** %13, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 6
  %207 = load float*, float** %206, align 8
  %208 = call i32 @VectorAdd(float* %199, i32* %203, float* %207)
  br label %209

209:                                              ; preds = %188, %187
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 5
  %213 = load float*, float** %212, align 8
  %214 = getelementptr inbounds float, float* %213, i64 0
  %215 = load float, float* %214, align 4
  %216 = fsub float %215, 1.000000e+00
  store float %216, float* %214, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 5
  %220 = load float*, float** %219, align 8
  %221 = getelementptr inbounds float, float* %220, i64 1
  %222 = load float, float* %221, align 4
  %223 = fsub float %222, 1.000000e+00
  store float %223, float* %221, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 5
  %227 = load float*, float** %226, align 8
  %228 = getelementptr inbounds float, float* %227, i64 2
  %229 = load float, float* %228, align 4
  %230 = fsub float %229, 1.000000e+00
  store float %230, float* %228, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 6
  %234 = load float*, float** %233, align 8
  %235 = getelementptr inbounds float, float* %234, i64 0
  %236 = load float, float* %235, align 4
  %237 = fadd float %236, 1.000000e+00
  store float %237, float* %235, align 4
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 6
  %241 = load float*, float** %240, align 8
  %242 = getelementptr inbounds float, float* %241, i64 1
  %243 = load float, float* %242, align 4
  %244 = fadd float %243, 1.000000e+00
  store float %244, float* %242, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 6
  %248 = load float*, float** %247, align 8
  %249 = getelementptr inbounds float, float* %248, i64 2
  %250 = load float, float* %249, align 4
  %251 = fadd float %250, 1.000000e+00
  store float %251, float* %249, align 4
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 6
  store i8* null, i8** %255, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  store i32 -1, i32* %257, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  store i32 -1, i32* %259, align 4
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 5
  %263 = load float*, float** %262, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 6
  %267 = load float*, float** %266, align 8
  %268 = load i32, i32* @MAX_TOTAL_ENT_LEAFS, align 4
  %269 = call i32 @CM_BoxLeafnums(float* %263, float* %267, i32* %22, i32 %268, i32* %12)
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %209
  store i32 1, i32* %18, align 4
  br label %475

273:                                              ; preds = %209
  store i32 0, i32* %8, align 4
  br label %274

274:                                              ; preds = %349, %273
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %7, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %352

278:                                              ; preds = %274
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %22, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @CM_LeafArea(i32 %282)
  store i32 %283, i32* %11, align 4
  %284 = load i32, i32* %11, align 4
  %285 = icmp ne i32 %284, -1
  br i1 %285, label %286, label %348

286:                                              ; preds = %278
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, -1
  br i1 %290, label %291, label %343

291:                                              ; preds = %286
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %343

297:                                              ; preds = %291
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, -1
  br i1 %301, label %302, label %339

302:                                              ; preds = %297
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %11, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %339

308:                                              ; preds = %302
  %309 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sv, i32 0, i32 0), align 8
  %310 = load i64, i64* @SS_LOADING, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %339

312:                                              ; preds = %308
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 5
  %320 = load float*, float** %319, align 8
  %321 = getelementptr inbounds float, float* %320, i64 0
  %322 = load float, float* %321, align 4
  %323 = fptosi float %322 to i64
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 5
  %327 = load float*, float** %326, align 8
  %328 = getelementptr inbounds float, float* %327, i64 1
  %329 = load float, float* %328, align 4
  %330 = fptosi float %329 to i64
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 5
  %334 = load float*, float** %333, align 8
  %335 = getelementptr inbounds float, float* %334, i64 2
  %336 = load float, float* %335, align 4
  %337 = fptosi float %336 to i64
  %338 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %316, i64 %323, i64 %330, i64 %337)
  br label %339

339:                                              ; preds = %312, %308, %302, %297
  %340 = load i32, i32* %11, align 4
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 2
  store i32 %340, i32* %342, align 4
  br label %347

343:                                              ; preds = %291, %286
  %344 = load i32, i32* %11, align 4
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  store i32 %344, i32* %346, align 8
  br label %347

347:                                              ; preds = %343, %339
  br label %348

348:                                              ; preds = %347, %278
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  br label %274

352:                                              ; preds = %274
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  store i64 0, i64* %354, align 8
  store i32 0, i32* %8, align 4
  br label %355

355:                                              ; preds = %386, %352
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %7, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %389

359:                                              ; preds = %355
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %22, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i8* @CM_LeafCluster(i32 %363)
  %365 = ptrtoint i8* %364 to i32
  store i32 %365, i32* %6, align 4
  %366 = load i32, i32* %6, align 4
  %367 = icmp ne i32 %366, -1
  br i1 %367, label %368, label %385

368:                                              ; preds = %359
  %369 = load i32, i32* %6, align 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 3
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %375, 1
  store i64 %376, i64* %374, align 8
  %377 = getelementptr inbounds i32, i32* %372, i64 %375
  store i32 %369, i32* %377, align 4
  %378 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @MAX_ENT_CLUSTERS, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %368
  br label %389

384:                                              ; preds = %368
  br label %385

385:                                              ; preds = %384, %359
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %8, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %8, align 4
  br label %355

389:                                              ; preds = %383, %355
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* %7, align 4
  %392 = icmp ne i32 %390, %391
  br i1 %392, label %393, label %398

393:                                              ; preds = %389
  %394 = load i32, i32* %12, align 4
  %395 = call i8* @CM_LeafCluster(i32 %394)
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 6
  store i8* %395, i8** %397, align 8
  br label %398

398:                                              ; preds = %393, %389
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 8
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %401, align 4
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sv_worldSectors, align 8
  store %struct.TYPE_14__* %404, %struct.TYPE_14__** %3, align 8
  br label %405

405:                                              ; preds = %458, %398
  br label %406

406:                                              ; preds = %405
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = icmp eq i32 %409, -1
  br i1 %410, label %411, label %412

411:                                              ; preds = %406
  br label %459

412:                                              ; preds = %406
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 5
  %416 = load float*, float** %415, align 8
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds float, float* %416, i64 %420
  %422 = load float, float* %421, align 4
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = sitofp i64 %425 to float
  %427 = fcmp ogt float %422, %426
  br i1 %427, label %428, label %434

428:                                              ; preds = %412
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 3
  %431 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %431, i64 0
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %432, align 8
  store %struct.TYPE_14__* %433, %struct.TYPE_14__** %3, align 8
  br label %458

434:                                              ; preds = %412
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 6
  %438 = load float*, float** %437, align 8
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds float, float* %438, i64 %442
  %444 = load float, float* %443, align 4
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = sitofp i64 %447 to float
  %449 = fcmp olt float %444, %448
  br i1 %449, label %450, label %456

450:                                              ; preds = %434
  %451 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i32 0, i32 3
  %453 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %453, i64 1
  %455 = load %struct.TYPE_14__*, %struct.TYPE_14__** %454, align 8
  store %struct.TYPE_14__* %455, %struct.TYPE_14__** %3, align 8
  br label %457

456:                                              ; preds = %434
  br label %459

457:                                              ; preds = %450
  br label %458

458:                                              ; preds = %457, %428
  br label %405

459:                                              ; preds = %456, %411
  %460 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 5
  store %struct.TYPE_14__* %460, %struct.TYPE_14__** %462, align 8
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 2
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %464, align 8
  %466 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %466, i32 0, i32 4
  store %struct.TYPE_15__* %465, %struct.TYPE_15__** %467, align 8
  %468 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 2
  store %struct.TYPE_15__* %468, %struct.TYPE_15__** %470, align 8
  %471 = load i32, i32* @qtrue, align 4
  %472 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 7
  store i32 %471, i32* %474, align 8
  store i32 0, i32* %18, align 4
  br label %475

475:                                              ; preds = %459, %272
  %476 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %476)
  %477 = load i32, i32* %18, align 4
  switch i32 %477, label %479 [
    i32 0, label %478
    i32 1, label %478
  ]

478:                                              ; preds = %475, %475
  ret void

479:                                              ; preds = %475
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @SV_SvEntityForGentity(%struct.TYPE_16__*) #2

declare dso_local i32 @SV_UnlinkEntity(%struct.TYPE_16__*) #2

declare dso_local float @RadiusFromBounds(i32*, i32*) #2

declare dso_local i32 @VectorAdd(float*, i32*, float*) #2

declare dso_local i32 @CM_BoxLeafnums(float*, float*, i32*, i32, i32*) #2

declare dso_local i32 @CM_LeafArea(i32) #2

declare dso_local i32 @Com_DPrintf(i8*, i32, i64, i64, i64) #2

declare dso_local i8* @CM_LeafCluster(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
