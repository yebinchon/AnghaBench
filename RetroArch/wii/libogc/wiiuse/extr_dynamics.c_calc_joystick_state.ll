; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_calc_joystick_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_calc_joystick_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.joystick_t = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { float, float }
%struct.TYPE_5__ = type { float, float }
%struct.TYPE_4__ = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_joystick_state(%struct.joystick_t* %0, float %1, float %2) #0 {
  %4 = alloca %struct.joystick_t*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.joystick_t* %0, %struct.joystick_t** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load float, float* %5, align 4
  %10 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %11 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = fcmp oeq float %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store float 0.000000e+00, float* %7, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load float, float* %5, align 4
  %18 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %19 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = fcmp oge float %17, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load float, float* %5, align 4
  %25 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %26 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = fsub float %24, %28
  %30 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %31 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %35 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fsub float %33, %37
  %39 = fdiv float %29, %38
  store float %39, float* %7, align 4
  br label %58

40:                                               ; preds = %16
  %41 = load float, float* %5, align 4
  %42 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %43 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fsub float %41, %45
  %47 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %48 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 4
  %51 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %52 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fsub float %50, %54
  %56 = fdiv float %46, %55
  %57 = fsub float %56, 1.000000e+00
  store float %57, float* %7, align 4
  br label %58

58:                                               ; preds = %40, %23
  br label %59

59:                                               ; preds = %58, %15
  %60 = load float, float* %6, align 4
  %61 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %62 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = fcmp oeq float %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store float 0.000000e+00, float* %8, align 4
  br label %110

67:                                               ; preds = %59
  %68 = load float, float* %6, align 4
  %69 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %70 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load float, float* %71, align 4
  %73 = fcmp oge float %68, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %67
  %75 = load float, float* %6, align 4
  %76 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %77 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load float, float* %78, align 4
  %80 = fsub float %75, %79
  %81 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %82 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %86 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = fsub float %84, %88
  %90 = fdiv float %80, %89
  store float %90, float* %8, align 4
  br label %109

91:                                               ; preds = %67
  %92 = load float, float* %6, align 4
  %93 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %94 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = fsub float %92, %96
  %98 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %99 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load float, float* %100, align 4
  %102 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %103 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load float, float* %104, align 4
  %106 = fsub float %101, %105
  %107 = fdiv float %97, %106
  %108 = fsub float %107, 1.000000e+00
  store float %108, float* %8, align 4
  br label %109

109:                                              ; preds = %91, %74
  br label %110

110:                                              ; preds = %109, %66
  %111 = load float, float* %7, align 4
  %112 = load float, float* %8, align 4
  %113 = call i32 @atan2f(float %111, float %112)
  %114 = call i32 @RAD_TO_DEGREE(i32 %113)
  %115 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %116 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load float, float* %7, align 4
  %118 = load float, float* %8, align 4
  %119 = call i32 @hypotf(float %117, float %118)
  %120 = load %struct.joystick_t*, %struct.joystick_t** %4, align 8
  %121 = getelementptr inbounds %struct.joystick_t, %struct.joystick_t* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  ret void
}

declare dso_local i32 @RAD_TO_DEGREE(i32) #1

declare dso_local i32 @atan2f(float, float) #1

declare dso_local i32 @hypotf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
