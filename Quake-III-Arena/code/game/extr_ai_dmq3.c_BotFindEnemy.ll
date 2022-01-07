; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotFindEnemy.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotFindEnemy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i64*, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32 }

@CHARACTERISTIC_ALERTNESS = common dso_local global i32 0, align 4
@CHARACTERISTIC_EASY_FRAGGER = common dso_local global i32 0, align 4
@INVENTORY_HEALTH = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@maxclients = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@lastteleport_time = common dso_local global i32 0, align 4
@lastteleport_origin = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@GT_OBELISK = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@blueobelisk = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@gametype = common dso_local global i64 0, align 8
@redobelisk = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFindEnemy(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CHARACTERISTIC_ALERTNESS, align 4
  %22 = call float @trap_Characteristic_BFloat(i32 %20, i32 %21, i32 0, i32 1)
  store float %22, float* %9, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CHARACTERISTIC_EASY_FRAGGER, align 4
  %27 = call float @trap_Characteristic_BFloat(i32 %25, i32 %26, i32 0, i32 1)
  store float %27, float* %10, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @INVENTORY_HEALTH, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %30, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @INVENTORY_HEALTH, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BotEntityInfo(i32 %50, %struct.TYPE_22__* %15)
  %52 = call i64 @EntityCarriesFlag(%struct.TYPE_22__* %15)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %3, align 4
  br label %286

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @VectorSubtract(i32 %58, i32 %61, i32* %62)
  %64 = load i32*, i32** %16, align 8
  %65 = call float @VectorLengthSquared(i32* %64)
  store float %65, float* %13, align 4
  br label %67

66:                                               ; preds = %2
  store float 0.000000e+00, float* %13, align 4
  br label %67

67:                                               ; preds = %66, %56
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %281, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @maxclients, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @MAX_CLIENTS, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %284

78:                                               ; preds = %76
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %281

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %281

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @BotEntityInfo(i32 %91, %struct.TYPE_22__* %14)
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %281

97:                                               ; preds = %90
  %98 = call i64 @EntityIsDead(%struct.TYPE_22__* %14)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %97
  br label %281

108:                                              ; preds = %100
  %109 = call i64 @EntityIsInvisible(%struct.TYPE_22__* %14)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = call i64 @EntityIsShooting(%struct.TYPE_22__* %14)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %281

115:                                              ; preds = %111, %108
  %116 = load float, float* %10, align 4
  %117 = fpext float %116 to double
  %118 = fcmp olt double %117, 5.000000e-01
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = call i64 @EntityIsChatting(%struct.TYPE_22__* %14)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %281

123:                                              ; preds = %119, %115
  %124 = load i32, i32* @lastteleport_time, align 4
  %125 = call i32 (...) @FloatTime()
  %126 = sub nsw i32 %125, 3
  %127 = icmp sgt i32 %124, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @lastteleport_origin, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = call i32 @VectorSubtract(i32 %130, i32 %131, i32* %132)
  %134 = load i32*, i32** %16, align 8
  %135 = call float @VectorLengthSquared(i32* %134)
  %136 = call float @Square(i32 70)
  %137 = fcmp olt float %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %281

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %123
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @VectorSubtract(i32 %142, i32 %145, i32* %146)
  %148 = load i32*, i32** %16, align 8
  %149 = call float @VectorLengthSquared(i32* %148)
  store float %149, float* %12, align 4
  %150 = call i64 @EntityCarriesFlag(%struct.TYPE_22__* %14)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %5, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load float, float* %12, align 4
  %157 = load float, float* %13, align 4
  %158 = fcmp ogt float %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %281

160:                                              ; preds = %155, %152
  br label %161

161:                                              ; preds = %160, %140
  %162 = load float, float* %12, align 4
  %163 = load float, float* %9, align 4
  %164 = fpext float %163 to double
  %165 = fmul double %164, 4.000000e+03
  %166 = fadd double 9.000000e+02, %165
  %167 = fptosi double %166 to i32
  %168 = call float @Square(i32 %167)
  %169 = fcmp ogt float %162, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %281

171:                                              ; preds = %161
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = load i32, i32* %6, align 4
  %174 = call i64 @BotSameTeam(%struct.TYPE_20__* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %281

177:                                              ; preds = %171
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = call i64 @EntityIsShooting(%struct.TYPE_22__* %14)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183, %180
  store float 3.600000e+02, float* %8, align 4
  br label %200

187:                                              ; preds = %183, %177
  %188 = load float, float* %12, align 4
  %189 = call float @Square(i32 810)
  %190 = fcmp ogt float %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call float @Square(i32 810)
  br label %195

193:                                              ; preds = %187
  %194 = load float, float* %12, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi float [ %192, %191 ], [ %194, %193 ]
  %197 = fdiv float %196, 7.290000e+03
  %198 = fsub float 9.000000e+01, %197
  %199 = fsub float 1.800000e+02, %198
  store float %199, float* %8, align 4
  br label %200

200:                                              ; preds = %195, %186
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 10
  %209 = load i32, i32* %208, align 4
  %210 = load float, float* %8, align 4
  %211 = load i32, i32* %6, align 4
  %212 = call float @BotEntityVisible(i64 %203, i32 %206, i32 %209, float %210, i32 %211)
  store float %212, float* %11, align 4
  %213 = load float, float* %11, align 4
  %214 = fcmp ole float %213, 0.000000e+00
  br i1 %214, label %215, label %216

215:                                              ; preds = %200
  br label %281

216:                                              ; preds = %200
  %217 = load i32, i32* %5, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %255

219:                                              ; preds = %216
  %220 = load float, float* %12, align 4
  %221 = call float @Square(i32 100)
  %222 = fcmp ogt float %220, %221
  br i1 %222, label %223, label %255

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %255, label %226

226:                                              ; preds = %223
  %227 = call i64 @EntityIsShooting(%struct.TYPE_22__* %14)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %255, label %229

229:                                              ; preds = %226
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %16, align 8
  %236 = call i32 @VectorSubtract(i32 %232, i32 %234, i32* %235)
  %237 = load i32*, i32** %16, align 8
  %238 = load i32*, i32** %17, align 8
  %239 = call i32 @vectoangles(i32* %237, i32* %238)
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %17, align 8
  %243 = call i32 @InFieldOfVision(i32 %241, i32 90, i32* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %229
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @BotUpdateBattleInventory(%struct.TYPE_20__* %246, i32 %247)
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %250 = call i64 @BotWantsToRetreat(%struct.TYPE_20__* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %281

253:                                              ; preds = %245
  br label %254

254:                                              ; preds = %253, %229
  br label %255

255:                                              ; preds = %254, %226, %223, %219, %216
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  store i64 %257, i64* %259, align 8
  %260 = load i32, i32* %5, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = call i32 (...) @FloatTime()
  %264 = sub nsw i32 %263, 2
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  br label %271

267:                                              ; preds = %255
  %268 = call i32 (...) @FloatTime()
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %267, %262
  %272 = load i32, i32* @qfalse, align 4
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 5
  store i32 %272, i32* %274, align 4
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 8
  store i64 0, i64* %276, align 8
  %277 = call i32 (...) @FloatTime()
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 6
  store i32 %277, i32* %279, align 8
  %280 = load i32, i32* @qtrue, align 4
  store i32 %280, i32* %3, align 4
  br label %286

281:                                              ; preds = %252, %215, %176, %170, %159, %138, %122, %114, %107, %96, %89, %84
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %6, align 4
  br label %68

284:                                              ; preds = %76
  %285 = load i32, i32* @qfalse, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %284, %271, %54
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_22__*) #1

declare dso_local i64 @EntityCarriesFlag(%struct.TYPE_22__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local float @VectorLengthSquared(i32*) #1

declare dso_local i64 @EntityIsDead(%struct.TYPE_22__*) #1

declare dso_local i64 @EntityIsInvisible(%struct.TYPE_22__*) #1

declare dso_local i64 @EntityIsShooting(%struct.TYPE_22__*) #1

declare dso_local i64 @EntityIsChatting(%struct.TYPE_22__*) #1

declare dso_local i32 @FloatTime(...) #1

declare dso_local float @Square(i32) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_20__*, i32) #1

declare dso_local float @BotEntityVisible(i64, i32, i32, float, i32) #1

declare dso_local i32 @vectoangles(i32*, i32*) #1

declare dso_local i32 @InFieldOfVision(i32, i32, i32*) #1

declare dso_local i32 @BotUpdateBattleInventory(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @BotWantsToRetreat(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
