; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_players.c_UI_PlayerAngles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_players.c_UI_PlayerAngles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { float, float, i8*, i8* }
%struct.TYPE_6__ = type { float, i8* }

@YAW = common dso_local global i64 0, align 8
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@SWINGSPEED = common dso_local global float 0.000000e+00, align 4
@PITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float**, float**, float**)* @UI_PlayerAngles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_PlayerAngles(%struct.TYPE_8__* %0, float** %1, float** %2, float** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca float**, align 8
  %7 = alloca float**, align 8
  %8 = alloca float**, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store float** %1, float*** %6, align 8
  store float** %2, float*** %7, align 8
  store float** %3, float*** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load float*, float** %11, align 8
  %18 = call i32 @VectorCopy(i32 %16, float* %17)
  %19 = load float*, float** %11, align 8
  %20 = load i64, i64* @YAW, align 8
  %21 = getelementptr inbounds float, float* %19, i64 %20
  %22 = load float, float* %21, align 4
  %23 = call float @AngleMod(float %22)
  %24 = load float*, float** %11, align 8
  %25 = load i64, i64* @YAW, align 8
  %26 = getelementptr inbounds float, float* %24, i64 %25
  store float %23, float* %26, align 4
  %27 = load float*, float** %9, align 8
  %28 = call i32 @VectorClear(float* %27)
  %29 = load float*, float** %10, align 8
  %30 = call i32 @VectorClear(float* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @LEGS_IDLE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* @TORSO_STAND, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %39, %4
  %49 = load i8*, i8** @qtrue, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** @qtrue, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** @qtrue, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %48, %39
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = call float @UI_MovedirAdjustment(%struct.TYPE_8__* %62)
  store float %63, float* %13, align 4
  %64 = load float*, float** %11, align 8
  %65 = load i64, i64* @YAW, align 8
  %66 = getelementptr inbounds float, float* %64, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float, float* %13, align 4
  %69 = fadd float %67, %68
  %70 = load float*, float** %9, align 8
  %71 = load i64, i64* @YAW, align 8
  %72 = getelementptr inbounds float, float* %70, i64 %71
  store float %69, float* %72, align 4
  %73 = load float*, float** %11, align 8
  %74 = load i64, i64* @YAW, align 8
  %75 = getelementptr inbounds float, float* %73, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fpext float %76 to double
  %78 = load float, float* %13, align 4
  %79 = fpext float %78 to double
  %80 = fmul double 2.500000e-01, %79
  %81 = fadd double %77, %80
  %82 = fptrunc double %81 to float
  %83 = load float*, float** %10, align 8
  %84 = load i64, i64* @YAW, align 8
  %85 = getelementptr inbounds float, float* %83, i64 %84
  store float %82, float* %85, align 4
  %86 = load float*, float** %10, align 8
  %87 = load i64, i64* @YAW, align 8
  %88 = getelementptr inbounds float, float* %86, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float, float* @SWINGSPEED, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = call i32 @UI_SwingAngles(float %89, i32 25, i32 90, float %90, float* %93, i8** %96)
  %98 = load float*, float** %9, align 8
  %99 = load i64, i64* @YAW, align 8
  %100 = getelementptr inbounds float, float* %98, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float, float* @SWINGSPEED, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = call i32 @UI_SwingAngles(float %101, i32 40, i32 90, float %102, float* %105, i8** %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load float, float* %112, align 8
  %114 = load float*, float** %10, align 8
  %115 = load i64, i64* @YAW, align 8
  %116 = getelementptr inbounds float, float* %114, i64 %115
  store float %113, float* %116, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load float, float* %119, align 8
  %121 = load float*, float** %9, align 8
  %122 = load i64, i64* @YAW, align 8
  %123 = getelementptr inbounds float, float* %121, i64 %122
  store float %120, float* %123, align 4
  %124 = load float*, float** %11, align 8
  %125 = load i64, i64* @PITCH, align 8
  %126 = getelementptr inbounds float, float* %124, i64 %125
  %127 = load float, float* %126, align 4
  %128 = fcmp ogt float %127, 1.800000e+02
  br i1 %128, label %129, label %138

129:                                              ; preds = %61
  %130 = load float*, float** %11, align 8
  %131 = load i64, i64* @PITCH, align 8
  %132 = getelementptr inbounds float, float* %130, i64 %131
  %133 = load float, float* %132, align 4
  %134 = fadd float -3.600000e+02, %133
  %135 = fpext float %134 to double
  %136 = fmul double %135, 7.500000e-01
  %137 = fptrunc double %136 to float
  store float %137, float* %12, align 4
  br label %146

138:                                              ; preds = %61
  %139 = load float*, float** %11, align 8
  %140 = load i64, i64* @PITCH, align 8
  %141 = getelementptr inbounds float, float* %139, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fpext float %142 to double
  %144 = fmul double %143, 7.500000e-01
  %145 = fptrunc double %144 to float
  store float %145, float* %12, align 4
  br label %146

146:                                              ; preds = %138, %129
  %147 = load float, float* %12, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = call i32 @UI_SwingAngles(float %147, i32 15, i32 30, float 0x3FB99999A0000000, float* %150, i8** %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load float, float* %157, align 4
  %159 = load float*, float** %10, align 8
  %160 = load i64, i64* @PITCH, align 8
  %161 = getelementptr inbounds float, float* %159, i64 %160
  store float %158, float* %161, align 4
  %162 = load float*, float** %11, align 8
  %163 = load float*, float** %10, align 8
  %164 = load float*, float** %11, align 8
  %165 = call i32 @AnglesSubtract(float* %162, float* %163, float* %164)
  %166 = load float*, float** %10, align 8
  %167 = load float*, float** %9, align 8
  %168 = load float*, float** %10, align 8
  %169 = call i32 @AnglesSubtract(float* %166, float* %167, float* %168)
  %170 = load float*, float** %9, align 8
  %171 = load float**, float*** %6, align 8
  %172 = call i32 @AnglesToAxis(float* %170, float** %171)
  %173 = load float*, float** %10, align 8
  %174 = load float**, float*** %7, align 8
  %175 = call i32 @AnglesToAxis(float* %173, float** %174)
  %176 = load float*, float** %11, align 8
  %177 = load float**, float*** %8, align 8
  %178 = call i32 @AnglesToAxis(float* %176, float** %177)
  ret void
}

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local float @AngleMod(float) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local float @UI_MovedirAdjustment(%struct.TYPE_8__*) #1

declare dso_local i32 @UI_SwingAngles(float, i32, i32, float, float*, i8**) #1

declare dso_local i32 @AnglesSubtract(float*, float*, float*) #1

declare dso_local i32 @AnglesToAxis(float*, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
