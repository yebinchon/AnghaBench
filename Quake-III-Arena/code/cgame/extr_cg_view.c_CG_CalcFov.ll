; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_CalcFov.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_CalcFov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, float, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { float, float, float, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { float }

@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@DF_FIXED_FOV = common dso_local global i32 0, align 4
@cg_fov = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@cg_zoomFov = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ZOOM_TIME = common dso_local global i64 0, align 8
@M_PI = common dso_local global float 0.000000e+00, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@WAVE_FREQUENCY = common dso_local global double 0.000000e+00, align 8
@WAVE_AMPLITUDE = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CG_CalcFov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_CalcFov() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 5, i32 0), align 8
  %11 = load i64, i64* @PM_INTERMISSION, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store float 9.000000e+01, float* %5, align 4
  br label %93

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 4
  %16 = load i32, i32* @DF_FIXED_FOV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store float 9.000000e+01, float* %5, align 4
  br label %31

20:                                               ; preds = %14
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_fov, i32 0, i32 0), align 4
  store float %21, float* %5, align 4
  %22 = load float, float* %5, align 4
  %23 = fcmp olt float %22, 1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store float 1.000000e+00, float* %5, align 4
  br label %30

25:                                               ; preds = %20
  %26 = load float, float* %5, align 4
  %27 = fcmp ogt float %26, 1.600000e+02
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store float 1.600000e+02, float* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %24
  br label %31

31:                                               ; preds = %30, %19
  %32 = load float, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_zoomFov, i32 0, i32 0), align 4
  store float %32, float* %7, align 4
  %33 = load float, float* %7, align 4
  %34 = fcmp olt float %33, 1.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float 1.000000e+00, float* %7, align 4
  br label %41

36:                                               ; preds = %31
  %37 = load float, float* %7, align 4
  %38 = fcmp ogt float %37, 1.600000e+02
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store float 1.600000e+02, float* %7, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 4), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %46 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 8
  %47 = fpext float %46 to double
  %48 = fsub double %45, %47
  %49 = load i64, i64* @ZOOM_TIME, align 8
  %50 = sitofp i64 %49 to float
  %51 = fpext float %50 to double
  %52 = fdiv double %48, %51
  %53 = fptrunc double %52 to float
  store float %53, float* %8, align 4
  %54 = load float, float* %8, align 4
  %55 = fpext float %54 to double
  %56 = fcmp ogt double %55, 1.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load float, float* %7, align 4
  store float %58, float* %5, align 4
  br label %67

59:                                               ; preds = %44
  %60 = load float, float* %5, align 4
  %61 = load float, float* %8, align 4
  %62 = load float, float* %7, align 4
  %63 = load float, float* %5, align 4
  %64 = fsub float %62, %63
  %65 = fmul float %61, %64
  %66 = fadd float %60, %65
  store float %66, float* %5, align 4
  br label %67

67:                                               ; preds = %59, %57
  br label %92

68:                                               ; preds = %41
  %69 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %70 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 8
  %71 = fpext float %70 to double
  %72 = fsub double %69, %71
  %73 = load i64, i64* @ZOOM_TIME, align 8
  %74 = sitofp i64 %73 to float
  %75 = fpext float %74 to double
  %76 = fdiv double %72, %75
  %77 = fptrunc double %76 to float
  store float %77, float* %8, align 4
  %78 = load float, float* %8, align 4
  %79 = fpext float %78 to double
  %80 = fcmp ogt double %79, 1.000000e+00
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load float, float* %5, align 4
  store float %82, float* %5, align 4
  br label %91

83:                                               ; preds = %68
  %84 = load float, float* %7, align 4
  %85 = load float, float* %8, align 4
  %86 = load float, float* %5, align 4
  %87 = load float, float* %7, align 4
  %88 = fsub float %86, %87
  %89 = fmul float %85, %88
  %90 = fadd float %84, %89
  store float %90, float* %5, align 4
  br label %91

91:                                               ; preds = %83, %81
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92, %13
  %94 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 0), align 8
  %95 = load float, float* %5, align 4
  %96 = fdiv float %95, 3.600000e+02
  %97 = load float, float* @M_PI, align 4
  %98 = fmul float %96, %97
  %99 = call float @tan(float %98)
  %100 = fdiv float %94, %99
  store float %100, float* %1, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 4), align 8
  %102 = load float, float* %1, align 4
  %103 = call float @atan2(i32 %101, float %102)
  store float %103, float* %6, align 4
  %104 = load float, float* %6, align 4
  %105 = fmul float %104, 3.600000e+02
  %106 = load float, float* @M_PI, align 4
  %107 = fdiv float %105, %106
  store float %107, float* %6, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 3), align 4
  %109 = call i32 @CG_PointContents(i32 %108, i32 -1)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @CONTENTS_WATER, align 4
  %112 = load i32, i32* @CONTENTS_SLIME, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @CONTENTS_LAVA, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %110, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %93
  %119 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %120 = fdiv double %119, 1.000000e+03
  %121 = load double, double* @WAVE_FREQUENCY, align 8
  %122 = fmul double %120, %121
  %123 = load float, float* @M_PI, align 4
  %124 = fpext float %123 to double
  %125 = fmul double %122, %124
  %126 = fmul double %125, 2.000000e+00
  %127 = fptrunc double %126 to float
  store float %127, float* %2, align 4
  %128 = load float, float* @WAVE_AMPLITUDE, align 4
  %129 = load float, float* %2, align 4
  %130 = call float @sin(float %129)
  %131 = fmul float %128, %130
  store float %131, float* %3, align 4
  %132 = load float, float* %3, align 4
  %133 = load float, float* %5, align 4
  %134 = fadd float %133, %132
  store float %134, float* %5, align 4
  %135 = load float, float* %3, align 4
  %136 = load float, float* %6, align 4
  %137 = fsub float %136, %135
  store float %137, float* %6, align 4
  %138 = load i32, i32* @qtrue, align 4
  store i32 %138, i32* %9, align 4
  br label %141

139:                                              ; preds = %93
  %140 = load i32, i32* @qfalse, align 4
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %139, %118
  %142 = load float, float* %5, align 4
  store float %142, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 1), align 4
  %143 = load float, float* %6, align 4
  store float %143, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 2), align 8
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 4), align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 2), align 4
  br label %152

147:                                              ; preds = %141
  %148 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 2), align 8
  %149 = fpext float %148 to double
  %150 = fdiv double %149, 7.500000e+01
  %151 = fptosi double %150 to i32
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 2), align 4
  br label %152

152:                                              ; preds = %147, %146
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local float @tan(float) #1

declare dso_local float @atan2(i32, float) #1

declare dso_local i32 @CG_PointContents(i32, i32) #1

declare dso_local float @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
