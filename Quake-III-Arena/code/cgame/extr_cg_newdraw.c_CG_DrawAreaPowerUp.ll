; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawAreaPowerUp.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawAreaPowerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64*, i32* }
%struct.TYPE_9__ = type { float, float, double, float }
%struct.TYPE_11__ = type { i32 }

@MAX_POWERUPS = common dso_local global i32 0, align 4
@HUD_VERTICAL = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@POWERUP_BLINKS = common dso_local global i32 0, align 4
@POWERUP_BLINK_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, float, float, float*)* @CG_DrawAreaPowerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawAreaPowerUp(%struct.TYPE_9__* %0, i32 %1, float %2, float %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca float, align 4
  %23 = alloca %struct.TYPE_9__, align 8
  %24 = alloca float*, align 8
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %27 = load i32, i32* @MAX_POWERUPS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %31 = load i32, i32* @MAX_POWERUPS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store float %36, float* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store float %40, float* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store double %44, double* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load float, float* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  store float %48, float* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HUD_VERTICAL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %5
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  br label %57

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi float* [ %54, %53 ], [ %56, %55 ]
  store float* %58, float** %24, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %19, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @STAT_HEALTH, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 1, i32* %25, align 4
  br label %271

69:                                               ; preds = %57
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %155, %69
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @MAX_POWERUPS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %158

74:                                               ; preds = %70
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %155

84:                                               ; preds = %74
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %20, align 4
  %98 = icmp sge i32 %97, 999000
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %84
  br label %155

100:                                              ; preds = %96
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %141, %100
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %144

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %33, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %105
  %113 = load i32, i32* %18, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %136, %112
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %30, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %30, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %33, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %33, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %119
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %17, align 4
  br label %115

139:                                              ; preds = %115
  br label %144

140:                                              ; preds = %105
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %101

144:                                              ; preds = %139, %101
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %30, i64 %147
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %33, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* %18, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %144, %99, %83
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %70

158:                                              ; preds = %70
  store i32 0, i32* %15, align 4
  br label %159

159:                                              ; preds = %266, %158
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %18, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %269

163:                                              ; preds = %159
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %30, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call %struct.TYPE_11__* @BG_FindItemForPowerup(i32 %167)
  store %struct.TYPE_11__* %168, %struct.TYPE_11__** %21, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %170 = icmp ne %struct.TYPE_11__* %169, null
  br i1 %170, label %171, label %265

171:                                              ; preds = %163
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %30, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %20, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* @POWERUP_BLINKS, align 4
  %186 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %187 = mul nsw i32 %185, %186
  %188 = icmp sge i32 %184, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %171
  %190 = call i32 @trap_R_SetColor(float* null)
  br label %215

191:                                              ; preds = %171
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %194 = sub nsw i32 %192, %193
  %195 = sitofp i32 %194 to float
  %196 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %197 = sitofp i32 %196 to float
  %198 = fdiv float %195, %197
  store float %198, float* %22, align 4
  %199 = load float, float* %22, align 4
  %200 = fptosi float %199 to i32
  %201 = sitofp i32 %200 to float
  %202 = load float, float* %22, align 4
  %203 = fsub float %202, %201
  store float %203, float* %22, align 4
  %204 = load float, float* %22, align 4
  %205 = load float*, float** %26, align 8
  %206 = getelementptr inbounds float, float* %205, i64 3
  store float %204, float* %206, align 4
  %207 = load float*, float** %26, align 8
  %208 = getelementptr inbounds float, float* %207, i64 2
  store float %204, float* %208, align 4
  %209 = load float*, float** %26, align 8
  %210 = getelementptr inbounds float, float* %209, i64 1
  store float %204, float* %210, align 4
  %211 = load float*, float** %26, align 8
  %212 = getelementptr inbounds float, float* %211, i64 0
  store float %204, float* %212, align 4
  %213 = load float*, float** %26, align 8
  %214 = call i32 @trap_R_SetColor(float* %213)
  br label %215

215:                                              ; preds = %191, %189
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %217 = load float, float* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %219 = load float, float* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %221 = load double, double* %220, align 8
  %222 = fmul double %221, 7.500000e-01
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %224 = load float, float* %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @trap_R_RegisterShader(i32 %227)
  %229 = call i32 @CG_DrawPic(float %217, float %219, double %222, float %224, i32 %228)
  %230 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %33, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sdiv i32 %234, 1000
  %236 = call i32 @Com_sprintf(i8* %230, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %238 = load float, float* %237, align 8
  %239 = fpext float %238 to double
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %241 = load double, double* %240, align 8
  %242 = fmul double %241, 7.500000e-01
  %243 = fadd double %239, %242
  %244 = fadd double %243, 3.000000e+00
  %245 = fptrunc double %244 to float
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %247 = load float, float* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %249 = load float, float* %248, align 8
  %250 = fadd float %247, %249
  %251 = load float, float* %9, align 4
  %252 = load float*, float** %10, align 8
  %253 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %254 = call i32 @CG_Text_Paint(float %245, float %250, float %251, float* %252, i8* %253, i32 0, i32 0, i32 0)
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %256 = load double, double* %255, align 8
  %257 = load float, float* %8, align 4
  %258 = fpext float %257 to double
  %259 = fadd double %256, %258
  %260 = load float*, float** %24, align 8
  %261 = load float, float* %260, align 4
  %262 = fpext float %261 to double
  %263 = fadd double %262, %259
  %264 = fptrunc double %263 to float
  store float %264, float* %260, align 4
  br label %265

265:                                              ; preds = %215, %163
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %159

269:                                              ; preds = %159
  %270 = call i32 @trap_R_SetColor(float* null)
  store i32 0, i32* %25, align 4
  br label %271

271:                                              ; preds = %269, %68
  %272 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %25, align 4
  switch i32 %273, label %275 [
    i32 0, label %274
    i32 1, label %274
  ]

274:                                              ; preds = %271, %271
  ret void

275:                                              ; preds = %271
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @BG_FindItemForPowerup(i32) #2

declare dso_local i32 @trap_R_SetColor(float*) #2

declare dso_local i32 @CG_DrawPic(float, float, double, float, i32) #2

declare dso_local i32 @trap_R_RegisterShader(i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @CG_Text_Paint(float, float, float, float*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
