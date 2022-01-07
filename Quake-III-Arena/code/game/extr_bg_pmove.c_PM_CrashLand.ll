; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_CrashLand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_CrashLand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, float*, float, i64*, i64, i32 }
%struct.TYPE_7__ = type { float*, float*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@pm = common dso_local global %struct.TYPE_8__* null, align 8
@PMF_BACKWARDS_JUMP = common dso_local global i32 0, align 4
@LEGS_LANDB = common dso_local global i32 0, align 4
@LEGS_LAND = common dso_local global i32 0, align 4
@TIMER_LAND = common dso_local global i32 0, align 4
@pml = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PMF_DUCKED = common dso_local global i32 0, align 4
@SURF_NODAMAGE = common dso_local global i32 0, align 4
@EV_FALL_FAR = common dso_local global i32 0, align 4
@STAT_HEALTH = common dso_local global i64 0, align 8
@EV_FALL_MEDIUM = common dso_local global i32 0, align 4
@EV_FALL_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_CrashLand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_CrashLand() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PMF_BACKWARDS_JUMP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @LEGS_LANDB, align 4
  %20 = call i32 @PM_ForceLegsAnim(i32 %19)
  br label %24

21:                                               ; preds = %0
  %22 = load i32, i32* @LEGS_LAND, align 4
  %23 = call i32 @PM_ForceLegsAnim(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @TIMER_LAND, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store i32 %25, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  %36 = load float, float* %35, align 4
  %37 = load float*, float** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 0), align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  %39 = load float, float* %38, align 4
  %40 = fsub float %36, %39
  store float %40, float* %2, align 4
  %41 = load float*, float** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 1), align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  %43 = load float, float* %42, align 4
  store float %43, float* %3, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load float, float* %47, align 8
  %49 = fneg float %48
  store float %49, float* %4, align 4
  %50 = load float, float* %4, align 4
  %51 = fdiv float %50, 2.000000e+00
  store float %51, float* %6, align 4
  %52 = load float, float* %3, align 4
  store float %52, float* %7, align 4
  %53 = load float, float* %2, align 4
  %54 = fneg float %53
  store float %54, float* %8, align 4
  %55 = load float, float* %7, align 4
  %56 = load float, float* %7, align 4
  %57 = fmul float %55, %56
  %58 = load float, float* %6, align 4
  %59 = fmul float 4.000000e+00, %58
  %60 = load float, float* %8, align 4
  %61 = fmul float %59, %60
  %62 = fsub float %57, %61
  store float %62, float* %9, align 4
  %63 = load float, float* %9, align 4
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %24
  br label %172

66:                                               ; preds = %24
  %67 = load float, float* %7, align 4
  %68 = fneg float %67
  %69 = load float, float* %9, align 4
  %70 = call float @sqrt(float %69)
  %71 = fsub float %68, %70
  %72 = load float, float* %6, align 4
  %73 = fmul float 2.000000e+00, %72
  %74 = fdiv float %71, %73
  store float %74, float* %5, align 4
  %75 = load float, float* %3, align 4
  %76 = load float, float* %5, align 4
  %77 = load float, float* %4, align 4
  %78 = fmul float %76, %77
  %79 = fadd float %75, %78
  store float %79, float* %1, align 4
  %80 = load float, float* %1, align 4
  %81 = load float, float* %1, align 4
  %82 = fmul float %80, %81
  %83 = fpext float %82 to double
  %84 = fmul double %83, 1.000000e-04
  %85 = fptrunc double %84 to float
  store float %85, float* %1, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PMF_DUCKED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %66
  %95 = load float, float* %1, align 4
  %96 = fmul float %95, 2.000000e+00
  store float %96, float* %1, align 4
  br label %97

97:                                               ; preds = %94, %66
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %172

103:                                              ; preds = %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load float, float* %1, align 4
  %110 = fpext float %109 to double
  %111 = fmul double %110, 2.500000e-01
  %112 = fptrunc double %111 to float
  store float %112, float* %1, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load float, float* %1, align 4
  %120 = fpext float %119 to double
  %121 = fmul double %120, 5.000000e-01
  %122 = fptrunc double %121 to float
  store float %122, float* %1, align 4
  br label %123

123:                                              ; preds = %118, %113
  %124 = load float, float* %1, align 4
  %125 = fcmp olt float %124, 1.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %172

127:                                              ; preds = %123
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 2, i32 0), align 8
  %129 = load i32, i32* @SURF_NODAMAGE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %167, label %132

132:                                              ; preds = %127
  %133 = load float, float* %1, align 4
  %134 = fcmp ogt float %133, 6.000000e+01
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @EV_FALL_FAR, align 4
  %137 = call i32 @PM_AddEvent(i32 %136)
  br label %166

138:                                              ; preds = %132
  %139 = load float, float* %1, align 4
  %140 = fcmp ogt float %139, 4.000000e+01
  br i1 %140, label %141, label %155

141:                                              ; preds = %138
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* @STAT_HEALTH, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load i32, i32* @EV_FALL_MEDIUM, align 4
  %153 = call i32 @PM_AddEvent(i32 %152)
  br label %154

154:                                              ; preds = %151, %141
  br label %165

155:                                              ; preds = %138
  %156 = load float, float* %1, align 4
  %157 = fcmp ogt float %156, 7.000000e+00
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* @EV_FALL_SHORT, align 4
  %160 = call i32 @PM_AddEvent(i32 %159)
  br label %164

161:                                              ; preds = %155
  %162 = call i32 (...) @PM_FootstepForSurface()
  %163 = call i32 @PM_AddEvent(i32 %162)
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %164, %154
  br label %166

166:                                              ; preds = %165, %135
  br label %167

167:                                              ; preds = %166, %127
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 4
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %167, %126, %102, %65
  ret void
}

declare dso_local i32 @PM_ForceLegsAnim(i32) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @PM_AddEvent(i32) #1

declare dso_local i32 @PM_FootstepForSurface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
