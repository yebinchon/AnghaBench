; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawPowerups.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawPowerups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, float, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i32* }
%struct.TYPE_8__ = type { i32 }

@MAX_POWERUPS = common dso_local global i32 0, align 4
@CG_DrawPowerups.colors = internal global [2 x [4 x float]] [[4 x float] [float 0x3FC99999A0000000, float 1.000000e+00, float 0x3FC99999A0000000, float 1.000000e+00], [4 x float] [float 1.000000e+00, float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 1.000000e+00]], align 16
@cg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@ICON_SIZE = common dso_local global i32 0, align 4
@CHAR_WIDTH = common dso_local global i32 0, align 4
@POWERUP_BLINKS = common dso_local global i32 0, align 4
@POWERUP_BLINK_TIME = common dso_local global i32 0, align 4
@PULSE_TIME = common dso_local global float 0.000000e+00, align 4
@PULSE_SCALE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @CG_DrawPowerups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CG_DrawPowerups(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  store float %0, float* %3, align 4
  %20 = load i32, i32* @MAX_POWERUPS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = load i32, i32* @MAX_POWERUPS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 3), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %11, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @STAT_HEALTH, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load float, float* %3, align 4
  store float %37, float* %2, align 4
  store i32 1, i32* %18, align 4
  br label %269

38:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %124, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAX_POWERUPS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %127

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %124

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 999000
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %53
  br label %124

69:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %110, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %113

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %26, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %105, %81
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %23, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %23, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %26, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %26, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %9, align 4
  br label %84

108:                                              ; preds = %84
  br label %113

109:                                              ; preds = %74
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %70

113:                                              ; preds = %108, %70
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %23, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %26, i64 %120
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %113, %68, %52
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %39

127:                                              ; preds = %39
  %128 = load i32, i32* @ICON_SIZE, align 4
  %129 = sub nsw i32 640, %128
  %130 = load i32, i32* @CHAR_WIDTH, align 4
  %131 = mul nsw i32 %130, 2
  %132 = sub nsw i32 %129, %131
  store i32 %132, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %263, %127
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %266

137:                                              ; preds = %133
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %23, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.TYPE_8__* @BG_FindItemForPowerup(i32 %141)
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %13, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %144 = icmp ne %struct.TYPE_8__* %143, null
  br i1 %144, label %145, label %262

145:                                              ; preds = %137
  store i32 1, i32* %15, align 4
  %146 = load i32, i32* @ICON_SIZE, align 4
  %147 = sitofp i32 %146 to float
  %148 = load float, float* %3, align 4
  %149 = fsub float %148, %147
  store float %149, float* %3, align 4
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x [4 x float]], [2 x [4 x float]]* @CG_DrawPowerups.colors, i64 0, i64 %151
  %153 = getelementptr inbounds [4 x float], [4 x float]* %152, i64 0, i64 0
  %154 = call i32 @trap_R_SetColor(float* %153)
  %155 = load i32, i32* %14, align 4
  %156 = load float, float* %3, align 4
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %26, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 1000
  %162 = call i32 @CG_DrawField(i32 %155, float %156, i32 2, i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %23, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %175 = sub nsw i32 %173, %174
  %176 = load i32, i32* @POWERUP_BLINKS, align 4
  %177 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %178 = mul nsw i32 %176, %177
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %145
  %181 = call i32 @trap_R_SetColor(float* null)
  br label %206

182:                                              ; preds = %145
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %185 = sub nsw i32 %183, %184
  %186 = sitofp i32 %185 to float
  %187 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %188 = sitofp i32 %187 to float
  %189 = fdiv float %186, %188
  store float %189, float* %17, align 4
  %190 = load float, float* %17, align 4
  %191 = fptosi float %190 to i32
  %192 = sitofp i32 %191 to float
  %193 = load float, float* %17, align 4
  %194 = fsub float %193, %192
  store float %194, float* %17, align 4
  %195 = load float, float* %17, align 4
  %196 = load float*, float** %19, align 8
  %197 = getelementptr inbounds float, float* %196, i64 3
  store float %195, float* %197, align 4
  %198 = load float*, float** %19, align 8
  %199 = getelementptr inbounds float, float* %198, i64 2
  store float %195, float* %199, align 4
  %200 = load float*, float** %19, align 8
  %201 = getelementptr inbounds float, float* %200, i64 1
  store float %195, float* %201, align 4
  %202 = load float*, float** %19, align 8
  %203 = getelementptr inbounds float, float* %202, i64 0
  store float %195, float* %203, align 4
  %204 = load float*, float** %19, align 8
  %205 = call i32 @trap_R_SetColor(float* %204)
  br label %206

206:                                              ; preds = %182, %180
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %23, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %207, %211
  br i1 %212, label %213, label %240

213:                                              ; preds = %206
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %215 = sitofp i32 %214 to float
  %216 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 2), align 8
  %217 = fsub float %215, %216
  %218 = load float, float* @PULSE_TIME, align 4
  %219 = fcmp olt float %217, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %213
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %222 = sitofp i32 %221 to float
  %223 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 2), align 8
  %224 = fsub float %222, %223
  %225 = load float, float* @PULSE_TIME, align 4
  %226 = fdiv float %224, %225
  %227 = fpext float %226 to double
  %228 = fsub double 1.000000e+00, %227
  %229 = fptrunc double %228 to float
  store float %229, float* %17, align 4
  %230 = load i32, i32* @ICON_SIZE, align 4
  %231 = sitofp i32 %230 to double
  %232 = load double, double* @PULSE_SCALE, align 8
  %233 = fsub double %232, 1.000000e+00
  %234 = load float, float* %17, align 4
  %235 = fpext float %234 to double
  %236 = fmul double %233, %235
  %237 = fadd double 1.000000e+00, %236
  %238 = fmul double %231, %237
  %239 = fptrunc double %238 to float
  store float %239, float* %16, align 4
  br label %243

240:                                              ; preds = %213, %206
  %241 = load i32, i32* @ICON_SIZE, align 4
  %242 = sitofp i32 %241 to float
  store float %242, float* %16, align 4
  br label %243

243:                                              ; preds = %240, %220
  %244 = load float, float* %16, align 4
  %245 = fsub float 6.400000e+02, %244
  %246 = fptosi float %245 to i32
  %247 = load float, float* %3, align 4
  %248 = load i32, i32* @ICON_SIZE, align 4
  %249 = sdiv i32 %248, 2
  %250 = sitofp i32 %249 to float
  %251 = fadd float %247, %250
  %252 = load float, float* %16, align 4
  %253 = fdiv float %252, 2.000000e+00
  %254 = fsub float %251, %253
  %255 = load float, float* %16, align 4
  %256 = load float, float* %16, align 4
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @trap_R_RegisterShader(i32 %259)
  %261 = call i32 @CG_DrawPic(i32 %246, float %254, float %255, float %256, i32 %260)
  br label %262

262:                                              ; preds = %243, %137
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %133

266:                                              ; preds = %133
  %267 = call i32 @trap_R_SetColor(float* null)
  %268 = load float, float* %3, align 4
  store float %268, float* %2, align 4
  store i32 1, i32* %18, align 4
  br label %269

269:                                              ; preds = %266, %36
  %270 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %270)
  %271 = load float, float* %2, align 4
  ret float %271
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @BG_FindItemForPowerup(i32) #2

declare dso_local i32 @trap_R_SetColor(float*) #2

declare dso_local i32 @CG_DrawField(i32, float, i32, i32) #2

declare dso_local i32 @CG_DrawPic(i32, float, float, float, i32) #2

declare dso_local i32 @trap_R_RegisterShader(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
