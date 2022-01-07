; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawNewTeamInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawNewTeamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_14__, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i8*, i32, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_15__ = type { float, i32, i32, float }
%struct.TYPE_16__ = type { i32 }

@numSortedTeamPlayers = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@sortedTeamPlayers = common dso_local global i32* null, align 8
@cg = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@MAX_LOCATIONS = common dso_local global i32 0, align 4
@CS_LOCATIONS = common dso_local global i64 0, align 8
@PW_NUM_POWERUPS = common dso_local global i32 0, align 4
@PIC_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@cg_weapons = common dso_local global %struct.TYPE_19__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawNewTeamInfo(%struct.TYPE_15__* %0, float %1, float %2, float %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store float 0.000000e+00, float* %21, align 4
  %28 = load i32, i32* @numSortedTeamPlayers, align 4
  %29 = icmp sgt i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @numSortedTeamPlayers, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 8, %30 ], [ %32, %31 ]
  store i32 %34, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %79, %33
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 4), align 8
  %41 = load i32*, i32** @sortedTeamPlayers, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i64 %46
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %25, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %39
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 1), align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @PERS_TEAM, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %55, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load float, float* %10, align 4
  %69 = call i32 @CG_Text_Width(i8* %67, float %68, i32 0)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = sitofp i32 %70 to float
  %72 = load float, float* %21, align 4
  %73 = fcmp ogt float %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %17, align 4
  %76 = sitofp i32 %75 to float
  store float %76, float* %21, align 4
  br label %77

77:                                               ; preds = %74, %64
  br label %78

78:                                               ; preds = %77, %52, %39
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %35

82:                                               ; preds = %35
  store float 0.000000e+00, float* %22, align 4
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %113, %82
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @MAX_LOCATIONS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = load i64, i64* @CS_LOCATIONS, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = call i8* @CG_ConfigString(i64 %91)
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %87
  %96 = load i8*, i8** %19, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i8*, i8** %19, align 8
  %102 = load float, float* %10, align 4
  %103 = call i32 @CG_Text_Width(i8* %101, float %102, i32 0)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = sitofp i32 %104 to float
  %106 = load float, float* %22, align 4
  %107 = fcmp ogt float %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %17, align 4
  %110 = sitofp i32 %109 to float
  store float %110, float* %22, align 4
  br label %111

111:                                              ; preds = %108, %100
  br label %112

112:                                              ; preds = %111, %95, %87
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %83

116:                                              ; preds = %83
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load float, float* %118, align 4
  store float %119, float* %14, align 4
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %332, %116
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %335

124:                                              ; preds = %120
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 4), align 8
  %126 = load i32*, i32** @sortedTeamPlayers, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i64 %131
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %25, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %331

137:                                              ; preds = %124
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 1), align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @PERS_TEAM, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %140, %147
  br i1 %148, label %149, label %331

149:                                              ; preds = %137
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %154

154:                                              ; preds = %186, %149
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @PW_NUM_POWERUPS, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %189

158:                                              ; preds = %154
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = shl i32 1, %162
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %158
  %167 = load i32, i32* %16, align 4
  %168 = call %struct.TYPE_16__* @BG_FindItemForPowerup(i32 %167)
  store %struct.TYPE_16__* %168, %struct.TYPE_16__** %26, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %170 = icmp ne %struct.TYPE_16__* %169, null
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load i32, i32* %13, align 4
  %173 = load float, float* %14, align 4
  %174 = load i32, i32* @PIC_WIDTH, align 4
  %175 = load i32, i32* @PIC_WIDTH, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @trap_R_RegisterShader(i32 %178)
  %180 = call i32 @CG_DrawPic(i32 %172, float %173, i32 %174, i32 %175, i64 %179)
  %181 = load i32, i32* @PIC_WIDTH, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %171, %166
  br label %185

185:                                              ; preds = %184, %158
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %16, align 4
  br label %154

189:                                              ; preds = %154
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @PIC_WIDTH, align 4
  %194 = mul nsw i32 %193, 3
  %195 = add nsw i32 %192, %194
  %196 = add nsw i32 %195, 2
  store i32 %196, i32* %13, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %20, align 8
  %204 = call i32 @CG_GetColorForHealth(i32 %199, i32 %202, i32* %203)
  %205 = load i32*, i32** %20, align 8
  %206 = call i32 @trap_R_SetColor(i32* %205)
  %207 = load i32, i32* %13, align 4
  %208 = load float, float* %14, align 4
  %209 = fadd float %208, 1.000000e+00
  %210 = load i32, i32* @PIC_WIDTH, align 4
  %211 = sub nsw i32 %210, 2
  %212 = load i32, i32* @PIC_WIDTH, align 4
  %213 = sub nsw i32 %212, 2
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 3, i32 1), align 8
  %215 = call i32 @CG_DrawPic(i32 %207, float %209, i32 %211, i32 %213, i64 %214)
  %216 = load i32, i32* @PIC_WIDTH, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %13, align 4
  %220 = call i32 @trap_R_SetColor(i32* null)
  %221 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 2), align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %189
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 8
  %226 = sub nsw i32 %225, 2500
  %227 = icmp sgt i32 %224, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %230 = ashr i32 %229, 9
  %231 = and i32 %230, 1
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  store i64 0, i64* %27, align 8
  br label %237

234:                                              ; preds = %228, %223
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 1), align 4
  %236 = call i64 @CG_StatusHandle(i32 %235)
  store i64 %236, i64* %27, align 8
  br label %237

237:                                              ; preds = %234, %233
  br label %243

238:                                              ; preds = %189
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @CG_StatusHandle(i32 %241)
  store i64 %242, i64* %27, align 8
  br label %243

243:                                              ; preds = %238, %237
  %244 = load i64, i64* %27, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load i32, i32* %13, align 4
  %248 = load float, float* %14, align 4
  %249 = load i32, i32* @PIC_WIDTH, align 4
  %250 = load i32, i32* @PIC_WIDTH, align 4
  %251 = load i64, i64* %27, align 8
  %252 = call i32 @CG_DrawPic(i32 %247, float %248, i32 %249, i32 %250, i64 %251)
  br label %253

253:                                              ; preds = %246, %243
  %254 = load i32, i32* @PIC_WIDTH, align 4
  %255 = add nsw i32 %254, 1
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %13, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %13, align 4
  %262 = sub nsw i32 %260, %261
  %263 = sitofp i32 %262 to float
  store float %263, float* %24, align 4
  %264 = load i32, i32* %13, align 4
  %265 = sitofp i32 %264 to float
  %266 = load float, float* %24, align 4
  %267 = fdiv float %266, 3.000000e+00
  %268 = fadd float %265, %267
  store float %268, float* %23, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load float, float* %14, align 4
  %271 = load float, float* %9, align 4
  %272 = fadd float %270, %271
  %273 = load float, float* %10, align 4
  %274 = load i32*, i32** %11, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @CG_Text_Paint_Limit(float* %23, i32 %269, float %272, float %273, i32* %274, i8* %277, i32 0, i32 0)
  %279 = load i64, i64* @CS_LOCATIONS, align 8
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %279, %282
  %284 = call i8* @CG_ConfigString(i64 %283)
  store i8* %284, i8** %19, align 8
  %285 = load i8*, i8** %19, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %253
  %288 = load i8*, i8** %19, align 8
  %289 = load i8, i8* %288, align 1
  %290 = icmp ne i8 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %287, %253
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %292

292:                                              ; preds = %291, %287
  %293 = load float, float* %24, align 4
  %294 = fdiv float %293, 3.000000e+00
  %295 = fadd float %294, 2.000000e+00
  %296 = load i32, i32* %13, align 4
  %297 = sitofp i32 %296 to float
  %298 = fadd float %297, %295
  %299 = fptosi float %298 to i32
  store i32 %299, i32* %13, align 4
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %302, 4
  %304 = sitofp i32 %303 to float
  store float %304, float* %23, align 4
  %305 = load i32, i32* %13, align 4
  %306 = load float, float* %14, align 4
  %307 = load float, float* %9, align 4
  %308 = fadd float %306, %307
  %309 = load float, float* %10, align 4
  %310 = load i32*, i32** %11, align 8
  %311 = load i8*, i8** %19, align 8
  %312 = call i32 @CG_Text_Paint_Limit(float* %23, i32 %305, float %308, float %309, i32* %310, i8* %311, i32 0, i32 0)
  %313 = load float, float* %9, align 4
  %314 = fadd float %313, 2.000000e+00
  %315 = load float, float* %14, align 4
  %316 = fadd float %315, %314
  store float %316, float* %14, align 4
  %317 = load float, float* %14, align 4
  %318 = load float, float* %9, align 4
  %319 = fadd float %317, %318
  %320 = fadd float %319, 2.000000e+00
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load float, float* %322, align 4
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 3
  %326 = load float, float* %325, align 4
  %327 = fadd float %323, %326
  %328 = fcmp ogt float %320, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %292
  br label %335

330:                                              ; preds = %292
  br label %331

331:                                              ; preds = %330, %137, %124
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %15, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %15, align 4
  br label %120

335:                                              ; preds = %329, %120
  ret void
}

declare dso_local i32 @CG_Text_Width(i8*, float, i32) #1

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local %struct.TYPE_16__* @BG_FindItemForPowerup(i32) #1

declare dso_local i32 @CG_DrawPic(i32, float, i32, i32, i64) #1

declare dso_local i64 @trap_R_RegisterShader(i32) #1

declare dso_local i32 @CG_GetColorForHealth(i32, i32, i32*) #1

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i64 @CG_StatusHandle(i32) #1

declare dso_local i32 @CG_Text_Paint_Limit(float*, i32, float, float, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
