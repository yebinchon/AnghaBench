; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotMapScripts.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotMapScripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, i64, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"q3tourney6\00", align 1
@TFL_FUNCBOB = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@maxclients = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@CHARACTERISTIC_AIM_ACCURACY = common dso_local global i32 0, align 4
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"mpq3tourney6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMapScripts(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %14 = call i32 @trap_GetServerinfo(i8* %13, i32 1024)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %17 = call i32 @Info_ValueForKey(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @strncpy(i8* %15, i32 %17, i32 127)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 127
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %21 = call i32 @Q_stricmp(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %276, label %23

23:                                               ; preds = %1
  store i64* inttoptr (i64 700 to i64*), i64** %10, align 8
  store i64* inttoptr (i64 964 to i64*), i64** %11, align 8
  store i64* inttoptr (i64 304 to i64*), i64** %12, align 8
  %24 = load i32, i32* @TFL_FUNCBOB, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %23
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %11, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %39
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %49
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %59
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %10, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %288

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %59, %49
  br label %82

82:                                               ; preds = %81, %39, %23
  %83 = load i32, i32* @qfalse, align 4
  store i32 %83, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %177, %82
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @maxclients, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MAX_CLIENTS, align 4
  %91 = icmp slt i32 %89, %90
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i1 [ false, %84 ], [ %91, %88 ]
  br i1 %93, label %94, label %180

94:                                               ; preds = %92
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %177

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @BotEntityInfo(i32 %102, %struct.TYPE_8__* %8)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %177

108:                                              ; preds = %101
  %109 = call i64 @EntityIsDead(%struct.TYPE_8__* %8)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111, %108
  br label %177

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %128, label %176

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %11, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %137, label %176

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %10, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %141, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %11, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %155
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i64 @BotSameTeam(%struct.TYPE_7__* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @qfalse, align 4
  store i32 %170, i32* %6, align 4
  br label %180

171:                                              ; preds = %164
  %172 = load i32, i32* @qtrue, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %173, %155
  br label %175

175:                                              ; preds = %174, %146, %137
  br label %176

176:                                              ; preds = %175, %128, %119
  br label %177

177:                                              ; preds = %176, %118, %107, %100
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %84

180:                                              ; preds = %169, %92
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %275

183:                                              ; preds = %180
  %184 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i64*, i64** %12, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = load i64*, i64** %9, align 8
  %194 = call i32 @VectorSubtract(i64* %189, i32 %192, i64* %193)
  %195 = load i64*, i64** %9, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @vectoangles(i64* %195, i32* %198)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY, align 4
  %204 = call float @trap_Characteristic_BFloat(i32 %202, i32 %203, i32 0, i32 1)
  store float %204, float* %7, align 4
  %205 = call i32 (...) @crandom()
  %206 = mul nsw i32 8, %205
  %207 = sitofp i32 %206 to float
  %208 = load float, float* %7, align 4
  %209 = fsub float 1.000000e+00, %208
  %210 = fmul float %207, %209
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @PITCH, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sitofp i32 %216 to float
  %218 = fadd float %217, %210
  %219 = fptosi float %218 to i32
  store i32 %219, i32* %215, align 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* @PITCH, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @AngleMod(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @PITCH, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %227, i32* %232, align 4
  %233 = call i32 (...) @crandom()
  %234 = mul nsw i32 8, %233
  %235 = sitofp i32 %234 to float
  %236 = load float, float* %7, align 4
  %237 = fsub float 1.000000e+00, %236
  %238 = fmul float %235, %237
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @YAW, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sitofp i32 %244 to float
  %246 = fadd float %245, %238
  %247 = fptosi float %246 to i32
  store i32 %247, i32* %243, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* @YAW, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @AngleMod(i32 %253)
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @YAW, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = call i64 @InFieldOfVision(i32 %263, i32 20, i32* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %183
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @trap_EA_Attack(i32 %272)
  br label %274

274:                                              ; preds = %269, %183
  br label %275

275:                                              ; preds = %274, %180
  br label %288

276:                                              ; preds = %1
  %277 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %278 = call i32 @Q_stricmp(i8* %277, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %287, label %280

280:                                              ; preds = %276
  %281 = load i32, i32* @TFL_FUNCBOB, align 4
  %282 = xor i32 %281, -1
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = and i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %280, %276
  br label %288

288:                                              ; preds = %79, %287, %275
  ret void
}

declare dso_local i32 @trap_GetServerinfo(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @EntityIsDead(%struct.TYPE_8__*) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @VectorSubtract(i64*, i32, i64*) #1

declare dso_local i32 @vectoangles(i64*, i32*) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i8* @AngleMod(i32) #1

declare dso_local i64 @InFieldOfVision(i32, i32, i32*) #1

declare dso_local i32 @trap_EA_Attack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
