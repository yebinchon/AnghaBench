; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_AddEntitiesVisibleFromPoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_AddEntitiesVisibleFromPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32*, i32, i32, i32 }

@sv = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"FIXING ENT->S.NUMBER!!!\0A\00", align 1
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@SVF_SINGLECLIENT = common dso_local global i32 0, align 4
@SVF_NOTSINGLECLIENT = common dso_local global i32 0, align 4
@SVF_CLIENTMASK = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SVF_CLIENTMASK: cientNum > 32\0A\00", align 1
@SVF_BROADCAST = common dso_local global i32 0, align 4
@SVF_PORTAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_19__*, i32*, i32)* @SV_AddEntitiesVisibleFromPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_AddEntitiesVisibleFromPoint(i32 %0, %struct.TYPE_19__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sv, i32 0, i32 2), align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %322

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @CM_PointLeafnum(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @CM_LeafArea(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @CM_LeafCluster(i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @CM_WriteAreaBits(i32 %33, i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32* @CM_ClusterPVS(i32 %38)
  store i32* %39, i32** %18, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %319, %24
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sv, i32 0, i32 0), align 8
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %322

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.TYPE_18__* @SV_GentityNum(i32 %45)
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %11, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %319

53:                                               ; preds = %44
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SVF_NOCLIENT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %319

75:                                               ; preds = %66
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SVF_SINGLECLIENT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %319

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SVF_NOTSINGLECLIENT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %319

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %95
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SVF_CLIENTMASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %115
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %127, 32
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* @ERR_DROP, align 4
  %131 = call i32 @Com_Error(i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %123
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 1, %141
  %143 = and i32 %137, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %319

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %115
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %149 = call %struct.TYPE_17__* @SV_SvEntityForGentity(%struct.TYPE_18__* %148)
  store %struct.TYPE_17__* %149, %struct.TYPE_17__** %12, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sv, i32 0, i32 1), align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %319

156:                                              ; preds = %147
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SVF_BROADCAST, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @SV_AddEntToSnapshot(%struct.TYPE_17__* %165, %struct.TYPE_18__* %166, i32* %167)
  br label %319

169:                                              ; preds = %156
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @CM_AreasConnected(i32 %170, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @CM_AreasConnected(i32 %177, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %176
  br label %319

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %184, %169
  %186 = load i32*, i32** %18, align 8
  store i32* %186, i32** %19, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  br label %319

192:                                              ; preds = %185
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %220, %192
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %193
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %13, align 4
  %207 = load i32*, i32** %19, align 8
  %208 = load i32, i32* %13, align 4
  %209 = ashr i32 %208, 3
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %13, align 4
  %214 = and i32 %213, 7
  %215 = shl i32 1, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %199
  br label %223

219:                                              ; preds = %199
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %193

223:                                              ; preds = %218, %193
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %268

229:                                              ; preds = %223
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %266

234:                                              ; preds = %229
  br label %235

235:                                              ; preds = %255, %234
  %236 = load i32, i32* %13, align 4
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = icmp sle i32 %236, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %235
  %242 = load i32*, i32** %19, align 8
  %243 = load i32, i32* %13, align 4
  %244 = ashr i32 %243, 3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %13, align 4
  %249 = and i32 %248, 7
  %250 = shl i32 1, %249
  %251 = and i32 %247, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %241
  br label %258

254:                                              ; preds = %241
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %13, align 4
  br label %235

258:                                              ; preds = %253, %235
  %259 = load i32, i32* %13, align 4
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %259, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %319

265:                                              ; preds = %258
  br label %267

266:                                              ; preds = %229
  br label %319

267:                                              ; preds = %265
  br label %268

268:                                              ; preds = %267, %223
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %271 = load i32*, i32** %7, align 8
  %272 = call i32 @SV_AddEntToSnapshot(%struct.TYPE_17__* %269, %struct.TYPE_18__* %270, i32* %271)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @SVF_PORTAL, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %318

280:                                              ; preds = %268
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %310

286:                                              ; preds = %280
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* %20, align 4
  %293 = call i32 @VectorSubtract(i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %20, align 4
  %295 = call float @VectorLengthSquared(i32 %294)
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = sitofp i32 %299 to float
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = sitofp i32 %304 to float
  %306 = fmul float %300, %305
  %307 = fcmp ogt float %295, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %286
  br label %319

309:                                              ; preds = %286
  br label %310

310:                                              ; preds = %309, %280
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %316 = load i32*, i32** %7, align 8
  %317 = load i32, i32* @qtrue, align 4
  call void @SV_AddEntitiesVisibleFromPoint(i32 %314, %struct.TYPE_19__* %315, i32* %316, i32 %317)
  br label %318

318:                                              ; preds = %310, %268
  br label %319

319:                                              ; preds = %318, %308, %266, %264, %191, %183, %164, %155, %145, %113, %93, %74, %52
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %9, align 4
  br label %40

322:                                              ; preds = %23, %40
  ret void
}

declare dso_local i32 @CM_PointLeafnum(i32) #1

declare dso_local i32 @CM_LeafArea(i32) #1

declare dso_local i32 @CM_LeafCluster(i32) #1

declare dso_local i32 @CM_WriteAreaBits(i32, i32) #1

declare dso_local i32* @CM_ClusterPVS(i32) #1

declare dso_local %struct.TYPE_18__* @SV_GentityNum(i32) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local %struct.TYPE_17__* @SV_SvEntityForGentity(%struct.TYPE_18__*) #1

declare dso_local i32 @SV_AddEntToSnapshot(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @CM_AreasConnected(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLengthSquared(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
