; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_DrawActiveFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_DrawActiveFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64*, i32, i64, i64, i32, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_12__, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { float }
%struct.TYPE_20__ = type { i64 }

@cg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@SNAPFLAG_NOT_ACTIVE = common dso_local global i32 0, align 4
@cg_thirdPerson = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@STEREO_RIGHT = common dso_local global i64 0, align 8
@cg_timescale = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@cg_timescaleFadeEnd = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@cg_timescaleFadeSpeed = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"timescale\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@cg_stats = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"cg.clientFrame:%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawActiveFrame(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13), align 8
  %10 = call i32 (...) @CG_UpdateCvars()
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (...) @CG_DrawInformation()
  br label %162

17:                                               ; preds = %3
  %18 = load i32, i32* @qfalse, align 4
  %19 = call i32 @trap_S_ClearLoopingSounds(i32 %18)
  %20 = call i32 (...) @trap_R_ClearScene()
  %21 = call i32 (...) @CG_ProcessSnapshots()
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SNAPFLAG_NOT_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %17
  %32 = call i32 (...) @CG_DrawInformation()
  br label %162

33:                                               ; preds = %24
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 12), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 11), align 8
  %36 = call i32 @trap_SetUserCmdValue(i32 %34, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 5), align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 5), align 8
  %39 = call i32 (...) @CG_PredictPlayerState()
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_thirdPerson, i32 0, i32 0), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @STAT_HEALTH, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %49, 0
  br label %51

51:                                               ; preds = %42, %33
  %52 = phi i1 [ true, %33 ], [ %50, %42 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 8
  %54 = call i32 (...) @CG_CalcViewValues()
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = call i32 (...) @CG_DamageBlendBlob()
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 10), align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = call i32 (...) @CG_AddPacketEntities()
  %64 = call i32 (...) @CG_AddMarks()
  %65 = call i32 (...) @CG_AddParticles()
  %66 = call i32 (...) @CG_AddLocalEntities()
  br label %67

67:                                               ; preds = %62, %59
  %68 = call i32 @CG_AddViewWeapon(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 9))
  %69 = call i32 (...) @CG_PlayBufferedSounds()
  %70 = call i32 (...) @CG_PlayBufferedVoiceChats()
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 8, i32 0), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 (...) @CG_AddTestModel()
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 6, i32 0), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 6, i32 3), align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @memcpy(i32 %77, i32 %80, i32 4)
  %82 = call i32 (...) @CG_PowerupTimerSounds()
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 6, i32 2), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 6, i32 1), align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @trap_S_Respatialize(i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @STEREO_RIGHT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %75
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 4), align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  br label %102

102:                                              ; preds = %101, %94
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %104 = sext i32 %103 to i64
  store i64 %104, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 4), align 8
  %105 = call i32 (...) @CG_AddLagometerFrameInfo()
  br label %106

106:                                              ; preds = %102, %75
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %154

110:                                              ; preds = %106
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load float, float* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_timescaleFadeSpeed, i32 0, i32 0), align 4
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %117 = sitofp i64 %116 to float
  %118 = fmul float %115, %117
  %119 = fdiv float %118, 1.000000e+03
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %121 = sitofp i64 %120 to float
  %122 = fadd float %121, %119
  %123 = fptosi float %122 to i64
  store i64 %123, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  store i64 %128, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  br label %129

129:                                              ; preds = %127, %114
  br label %146

130:                                              ; preds = %110
  %131 = load float, float* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_timescaleFadeSpeed, i32 0, i32 0), align 4
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %133 = sitofp i64 %132 to float
  %134 = fmul float %131, %133
  %135 = fdiv float %134, 1.000000e+03
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %137 = sitofp i64 %136 to float
  %138 = fsub float %137, %135
  %139 = fptosi float %138 to i64
  store i64 %139, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  store i64 %144, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  br label %145

145:                                              ; preds = %143, %130
  br label %146

146:                                              ; preds = %145, %129
  %147 = load float, float* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_timescaleFadeSpeed, i32 0, i32 0), align 4
  %148 = fcmp une float %147, 0.000000e+00
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_timescale, i32 0, i32 0), align 8
  %151 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  %152 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %146
  br label %154

154:                                              ; preds = %153, %106
  %155 = load i64, i64* %5, align 8
  %156 = call i32 @CG_DrawActive(i64 %155)
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_stats, i32 0, i32 0), align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 5), align 8
  %161 = call i32 @CG_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %15, %31, %159, %154
  ret void
}

declare dso_local i32 @CG_UpdateCvars(...) #1

declare dso_local i32 @CG_DrawInformation(...) #1

declare dso_local i32 @trap_S_ClearLoopingSounds(i32) #1

declare dso_local i32 @trap_R_ClearScene(...) #1

declare dso_local i32 @CG_ProcessSnapshots(...) #1

declare dso_local i32 @trap_SetUserCmdValue(i32, i32) #1

declare dso_local i32 @CG_PredictPlayerState(...) #1

declare dso_local i32 @CG_CalcViewValues(...) #1

declare dso_local i32 @CG_DamageBlendBlob(...) #1

declare dso_local i32 @CG_AddPacketEntities(...) #1

declare dso_local i32 @CG_AddMarks(...) #1

declare dso_local i32 @CG_AddParticles(...) #1

declare dso_local i32 @CG_AddLocalEntities(...) #1

declare dso_local i32 @CG_AddViewWeapon(i32*) #1

declare dso_local i32 @CG_PlayBufferedSounds(...) #1

declare dso_local i32 @CG_PlayBufferedVoiceChats(...) #1

declare dso_local i32 @CG_AddTestModel(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @CG_PowerupTimerSounds(...) #1

declare dso_local i32 @trap_S_Respatialize(i32, i32, i32, i32) #1

declare dso_local i32 @CG_AddLagometerFrameInfo(...) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i64) #1

declare dso_local i32 @CG_DrawActive(i64) #1

declare dso_local i32 @CG_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
