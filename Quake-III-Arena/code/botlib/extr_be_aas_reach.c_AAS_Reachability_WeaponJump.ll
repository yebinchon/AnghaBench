; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WeaponJump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WeaponJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64*, i64*, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32*, %struct.TYPE_15__*, i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i64 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@AREA_WEAPONJUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"area %d center %f %f %f in solid?\0D\0A\00", align 1
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@FACE_GROUND = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@SE_ENTERWATER = common dso_local global i32 0, align 4
@SE_ENTERSLIME = common dso_local global i32 0, align 4
@SE_ENTERLAVA = common dso_local global i32 0, align 4
@SE_HITGROUNDDAMAGE = common dso_local global i32 0, align 4
@SE_TOUCHJUMPPAD = common dso_local global i32 0, align 4
@SE_HITGROUND = common dso_local global i32 0, align 4
@SE_HITGROUNDAREA = common dso_local global i32 0, align 4
@TRAVEL_BFGJUMP = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@TRAVEL_ROCKETJUMP = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_15__** null, align 8
@reach_rocketjump = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_Reachability_WeaponJump(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_17__, align 4
  %26 = alloca %struct.TYPE_14__, align 8
  %27 = alloca %struct.TYPE_14__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @AAS_AreaGrounded(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @AAS_AreaSwim(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %2
  %37 = load i32, i32* @qfalse, align 4
  store i32 %37, i32* %3, align 4
  br label %319

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @AAS_AreaGrounded(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %3, align 4
  br label %319

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 3), align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AREA_WEAPONJUMP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %3, align 4
  br label %319

56:                                               ; preds = %44
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 2), align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 %59
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %15, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 2), align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 %63
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %16, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %69, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  %77 = load i32, i32* @qfalse, align 4
  store i32 %77, i32* %3, align 4
  br label %319

78:                                               ; preds = %56
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 2), align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = call i32 @VectorCopy(i32* %84, i32* %85)
  %87 = load i32*, i32** %20, align 8
  %88 = call i32 @AAS_PointAreaNum(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  %92 = load i32*, i32** %20, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %20, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %20, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @Log_Write(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %90, %78
  %103 = load i32*, i32** %20, align 8
  %104 = load i32*, i32** %21, align 8
  %105 = call i32 @VectorCopy(i32* %103, i32* %104)
  %106 = load i32*, i32** %21, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1000
  store i32 %109, i32* %107, align 4
  %110 = load i32*, i32** %20, align 8
  %111 = load i32*, i32** %21, align 8
  %112 = load i32, i32* @PRESENCE_CROUCH, align 4
  %113 = call { i32*, i64 } @AAS_TraceClientBBox(i32* %110, i32* %111, i32 %112, i32 -1)
  %114 = bitcast %struct.TYPE_14__* %27 to { i32*, i64 }*
  %115 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %114, i32 0, i32 0
  %116 = extractvalue { i32*, i64 } %113, 0
  store i32* %116, i32** %115, align 8
  %117 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %114, i32 0, i32 1
  %118 = extractvalue { i32*, i64 } %113, 1
  store i64 %118, i64* %117, align 8
  %119 = bitcast %struct.TYPE_14__* %26 to i8*
  %120 = bitcast %struct.TYPE_14__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %102
  %125 = load i32, i32* @qfalse, align 4
  store i32 %125, i32* %3, align 4
  br label %319

126:                                              ; preds = %102
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @VectorCopy(i32* %128, i32* %129)
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %314, %126
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %317

137:                                              ; preds = %131
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 0), align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %138, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %6, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 1), align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i64 @abs(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i64 %149
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %14, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FACE_GROUND, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %137
  br label %314

158:                                              ; preds = %137
  %159 = load i32, i32* %6, align 4
  %160 = load i32*, i32** %19, align 8
  %161 = call i32 @AAS_FaceCenter(i32 %159, i32* %160)
  %162 = load i32*, i32** %19, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %18, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 64
  %169 = icmp slt i32 %164, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %314

171:                                              ; preds = %158
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %310, %171
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %313

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32*, i32** %18, align 8
  %180 = call float @AAS_BFGJumpZVelocity(i32* %179)
  store float %180, float* %12, align 4
  br label %184

181:                                              ; preds = %175
  %182 = load i32*, i32** %18, align 8
  %183 = call float @AAS_RocketJumpZVelocity(i32* %182)
  store float %183, float* %12, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = load float, float* %12, align 4
  %186 = load i32*, i32** %18, align 8
  %187 = load i32*, i32** %19, align 8
  %188 = call i32 @AAS_HorizontalVelocityForJump(float %185, i32* %186, i32* %187, float* %11)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %309

191:                                              ; preds = %184
  %192 = load float, float* %11, align 4
  %193 = fcmp olt float %192, 3.000000e+02
  br i1 %193, label %194, label %309

194:                                              ; preds = %191
  %195 = load i32*, i32** %19, align 8
  %196 = load i32*, i32** %18, align 8
  %197 = load i32*, i32** %22, align 8
  %198 = call i32 @VectorSubtract(i32* %195, i32* %196, i32* %197)
  %199 = load i32*, i32** %22, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  store i32 0, i32* %200, align 4
  %201 = load i32*, i32** %22, align 8
  %202 = call float @VectorNormalize(i32* %201)
  store float %202, float* %13, align 4
  %203 = load i32*, i32** %22, align 8
  %204 = load float, float* %11, align 4
  %205 = load i32*, i32** %23, align 8
  %206 = call i32 @VectorScale(i32* %203, float %204, i32* %205)
  %207 = load i32*, i32** %24, align 8
  %208 = load float, float* %12, align 4
  %209 = call i32 @VectorSet(i32* %207, i32 0, i32 0, float %208)
  %210 = load i32*, i32** %18, align 8
  %211 = load i32, i32* @PRESENCE_NORMAL, align 4
  %212 = load i32, i32* @qtrue, align 4
  %213 = load i32*, i32** %24, align 8
  %214 = load i32*, i32** %23, align 8
  %215 = load i32, i32* @SE_ENTERWATER, align 4
  %216 = load i32, i32* @SE_ENTERSLIME, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @SE_ENTERLAVA, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @SE_TOUCHJUMPPAD, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @SE_HITGROUND, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @SE_HITGROUNDAREA, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @AAS_PredictClientMovement(%struct.TYPE_17__* %25, i32 -1, i32* %210, i32 %211, i32 %212, i32* %213, i32* %214, i32 30, i32 30, float 0x3FB99999A0000000, i32 %227, i32 %228, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %232, 30
  br i1 %233, label %234, label %308

234:                                              ; preds = %194
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @SE_ENTERSLIME, align 4
  %238 = load i32, i32* @SE_ENTERLAVA, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %241 = or i32 %239, %240
  %242 = and i32 %236, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %308, label %244

244:                                              ; preds = %234
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @SE_HITGROUNDAREA, align 4
  %248 = load i32, i32* @SE_TOUCHJUMPPAD, align 4
  %249 = or i32 %247, %248
  %250 = and i32 %246, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %308

252:                                              ; preds = %244
  %253 = call %struct.TYPE_15__* (...) @AAS_AllocReachability()
  store %struct.TYPE_15__* %253, %struct.TYPE_15__** %17, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %255 = icmp ne %struct.TYPE_15__* %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %252
  %257 = load i32, i32* @qfalse, align 4
  store i32 %257, i32* %3, align 4
  br label %319

258:                                              ; preds = %252
  %259 = load i32, i32* %5, align 4
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 7
  store i64 0, i64* %263, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 6
  store i64 0, i64* %265, align 8
  %266 = load i32*, i32** %18, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @VectorCopy(i32* %266, i32* %269)
  %271 = load i32*, i32** %19, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @VectorCopy(i32* %271, i32* %274)
  %276 = load i32, i32* %8, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %258
  %279 = load i32, i32* @TRAVEL_BFGJUMP, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 5
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @aassettings, i32 0, i32 1), align 4
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 4
  store i32 %282, i32* %284, align 8
  br label %292

285:                                              ; preds = %258
  %286 = load i32, i32* @TRAVEL_ROCKETJUMP, align 4
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 5
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @aassettings, i32 0, i32 0), align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 4
  store i32 %289, i32* %291, align 8
  br label %292

292:                                              ; preds = %285, %278
  %293 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @areareachability, align 8
  %294 = load i32, i32* %4, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %293, i64 %295
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %296, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 3
  store %struct.TYPE_15__* %297, %struct.TYPE_15__** %299, align 8
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %301 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @areareachability, align 8
  %302 = load i32, i32* %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %301, i64 %303
  store %struct.TYPE_15__* %300, %struct.TYPE_15__** %304, align 8
  %305 = load i32, i32* @reach_rocketjump, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* @reach_rocketjump, align 4
  %307 = load i32, i32* @qtrue, align 4
  store i32 %307, i32* %3, align 4
  br label %319

308:                                              ; preds = %244, %234, %194
  br label %309

309:                                              ; preds = %308, %191, %184
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %8, align 4
  br label %172

313:                                              ; preds = %172
  br label %314

314:                                              ; preds = %313, %170, %157
  %315 = load i32, i32* %7, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %7, align 4
  br label %131

317:                                              ; preds = %131
  %318 = load i32, i32* @qfalse, align 4
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %317, %292, %256, %124, %76, %54, %42, %36
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @AAS_AreaGrounded(i32) #1

declare dso_local i64 @AAS_AreaSwim(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i32 @Log_Write(i8*, i32, i32, i32, i32) #1

declare dso_local { i32*, i64 } @AAS_TraceClientBBox(i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @AAS_FaceCenter(i32, i32*) #1

declare dso_local float @AAS_BFGJumpZVelocity(i32*) #1

declare dso_local float @AAS_RocketJumpZVelocity(i32*) #1

declare dso_local i32 @AAS_HorizontalVelocityForJump(float, i32*, i32*, float*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorSet(i32*, i32, i32, float) #1

declare dso_local i32 @AAS_PredictClientMovement(%struct.TYPE_17__*, i32, i32*, i32, i32, i32*, i32*, i32, i32, float, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @AAS_AllocReachability(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
