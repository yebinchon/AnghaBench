; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_PredictRoute.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_PredictRoute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i64, i32 }
%struct.aas_predictroute_s = type { i32, i32, i32, i32, i32, i32 }

@RSE_NONE = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RSE_NOROUTE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RSE_USETRAVELTYPE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@RSE_ENTERCONTENTS = common dso_local global i32 0, align 4
@RSE_ENTERAREA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_PredictRoute(%struct.aas_predictroute_s* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.aas_predictroute_s*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_7__*, align 8
  %31 = alloca %struct.TYPE_6__*, align 8
  store %struct.aas_predictroute_s* %0, %struct.aas_predictroute_s** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %32 = load i32, i32* @RSE_NONE, align 4
  %33 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %34 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %37 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %39 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %41 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %44 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @VectorCopy(i32 %42, i32 %45)
  %47 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %48 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %47, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %29, align 4
  %52 = call i32 @VectorCopy(i32 %50, i32 %51)
  store i32 0, i32* %26, align 4
  br label %53

53:                                               ; preds = %391, %11
  %54 = load i32, i32* %24, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %26, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %26, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %67 = icmp slt i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60, %53
  %69 = phi i1 [ false, %60 ], [ false, %53 ], [ %67, %64 ]
  br i1 %69, label %70, label %394

70:                                               ; preds = %68
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %29, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @AAS_AreaReachabilityToGoalArea(i32 %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %25, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @RSE_NOROUTE, align 4
  %80 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %81 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @qfalse, align 4
  store i32 %82, i32* %12, align 4
  br label %402

83:                                               ; preds = %70
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 4), align 8
  %85 = load i32, i32* %25, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %30, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* @RSE_USETRAVELTYPE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %83
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @AAS_TravelFlagForType_inline(i32 %95)
  %97 = load i32, i32* %22, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %92
  %101 = load i32, i32* @RSE_USETRAVELTYPE, align 4
  %102 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %103 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %106 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %108 = load i32, i32* %24, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %114 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @AAS_TravelFlagForType_inline(i32 %117)
  %119 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %120 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %125 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @VectorCopy(i32 %123, i32 %126)
  %128 = load i32, i32* @qtrue, align 4
  store i32 %128, i32* %12, align 4
  br label %402

129:                                              ; preds = %92
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @AAS_AreaContentsTravelFlags_inline(i64 %132)
  %134 = load i32, i32* %22, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %191

137:                                              ; preds = %129
  %138 = load i32, i32* @RSE_USETRAVELTYPE, align 4
  %139 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %140 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %146 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %155 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @AAS_AreaContentsTravelFlags_inline(i64 %158)
  %160 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %161 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %166 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @VectorCopy(i32 %164, i32 %167)
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @AAS_AreaTravelTime(i32 %169, i32 %170, i32 %173)
  %175 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %176 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %174
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %185 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 4
  %190 = load i32, i32* @qtrue, align 4
  store i32 %190, i32* %12, align 4
  br label %402

191:                                              ; preds = %129
  br label %192

192:                                              ; preds = %191, %83
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 3), align 8
  %194 = load i32, i32* %25, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  store %struct.TYPE_6__* %196, %struct.TYPE_6__** %31, align 8
  store i32 0, i32* %27, align 4
  br label %197

197:                                              ; preds = %319, %192
  %198 = load i32, i32* %27, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  %203 = icmp slt i32 %198, %202
  br i1 %203, label %204, label %322

204:                                              ; preds = %197
  %205 = load i32, i32* %27, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp sge i32 %205, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %28, align 4
  br label %225

215:                                              ; preds = %204
  %216 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %27, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %216, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %28, align 4
  br label %225

225:                                              ; preds = %215, %210
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* @RSE_ENTERCONTENTS, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %285

230:                                              ; preds = %225
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %232 = load i32, i32* %28, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %21, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %284

240:                                              ; preds = %230
  %241 = load i32, i32* @RSE_ENTERCONTENTS, align 4
  %242 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %243 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %28, align 4
  %245 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %246 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %248 = load i32, i32* %28, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %254 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %259 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @VectorCopy(i32 %257, i32 %260)
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %15, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = call i64 @AAS_AreaTravelTime(i32 %262, i32 %263, i32 %266)
  %268 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %269 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %267
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %269, align 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %278 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %276
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %278, align 4
  %283 = load i32, i32* @qtrue, align 4
  store i32 %283, i32* %12, align 4
  br label %402

284:                                              ; preds = %230
  br label %285

285:                                              ; preds = %284, %225
  %286 = load i32, i32* %20, align 4
  %287 = load i32, i32* @RSE_ENTERAREA, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %318

290:                                              ; preds = %285
  %291 = load i32, i32* %28, align 4
  %292 = load i32, i32* %23, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %317

294:                                              ; preds = %290
  %295 = load i32, i32* @RSE_ENTERAREA, align 4
  %296 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %297 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %28, align 4
  %299 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %300 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %302 = load i32, i32* %28, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %308 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 4
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %313 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @VectorCopy(i32 %311, i32 %314)
  %316 = load i32, i32* @qtrue, align 4
  store i32 %316, i32* %12, align 4
  br label %402

317:                                              ; preds = %290
  br label %318

318:                                              ; preds = %317, %285
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %27, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %27, align 4
  br label %197

322:                                              ; preds = %197
  %323 = load i32, i32* %14, align 4
  %324 = load i32, i32* %15, align 4
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = call i64 @AAS_AreaTravelTime(i32 %323, i32 %324, i32 %327)
  %329 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %330 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %332, %328
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %330, align 4
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %339 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %341, %337
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %339, align 4
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = trunc i64 %346 to i32
  %348 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %349 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %358 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %357, i32 0, i32 2
  store i32 %356, i32* %358, align 4
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @AAS_TravelFlagForType_inline(i32 %361)
  %363 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %364 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %363, i32 0, i32 3
  store i32 %362, i32* %364, align 4
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %369 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @VectorCopy(i32 %367, i32 %370)
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %24, align 4
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %29, align 4
  %380 = call i32 @VectorCopy(i32 %378, i32 %379)
  %381 = load i32, i32* %19, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %322
  %384 = load %struct.aas_predictroute_s*, %struct.aas_predictroute_s** %13, align 8
  %385 = getelementptr inbounds %struct.aas_predictroute_s, %struct.aas_predictroute_s* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* %19, align 4
  %388 = icmp sgt i32 %386, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %383
  br label %394

390:                                              ; preds = %383, %322
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %26, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %26, align 4
  br label %53

394:                                              ; preds = %389, %68
  %395 = load i32, i32* %24, align 4
  %396 = load i32, i32* %16, align 4
  %397 = icmp ne i32 %395, %396
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = load i32, i32* @qfalse, align 4
  store i32 %399, i32* %12, align 4
  br label %402

400:                                              ; preds = %394
  %401 = load i32, i32* @qtrue, align 4
  store i32 %401, i32* %12, align 4
  br label %402

402:                                              ; preds = %400, %398, %294, %240, %137, %100, %78
  %403 = load i32, i32* %12, align 4
  ret i32 %403
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AAS_AreaReachabilityToGoalArea(i32, i32, i32, i32) #1

declare dso_local i32 @AAS_TravelFlagForType_inline(i32) #1

declare dso_local i32 @AAS_AreaContentsTravelFlags_inline(i64) #1

declare dso_local i64 @AAS_AreaTravelTime(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
