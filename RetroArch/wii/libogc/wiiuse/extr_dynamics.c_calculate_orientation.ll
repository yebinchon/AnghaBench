; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_calculate_orientation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_calculate_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accel_t = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.vec3w_t = type { i64, i64, i64 }
%struct.orient_t = type { float, float, float, float, float }

@SMOOTH_ROLL = common dso_local global i32 0, align 4
@SMOOTH_PITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_orientation(%struct.accel_t* %0, %struct.vec3w_t* %1, %struct.orient_t* %2, i32 %3) #0 {
  %5 = alloca %struct.accel_t*, align 8
  %6 = alloca %struct.vec3w_t*, align 8
  %7 = alloca %struct.orient_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.accel_t* %0, %struct.accel_t** %5, align 8
  store %struct.vec3w_t* %1, %struct.vec3w_t** %6, align 8
  store %struct.orient_t* %2, %struct.orient_t** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.orient_t*, %struct.orient_t** %7, align 8
  %16 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %15, i32 0, i32 0
  store float 0.000000e+00, float* %16, align 4
  %17 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %18 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sitofp i32 %20 to float
  store float %21, float* %9, align 4
  %22 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %23 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to float
  store float %26, float* %10, align 4
  %27 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %28 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sitofp i64 %30 to float
  store float %31, float* %11, align 4
  %32 = load %struct.vec3w_t*, %struct.vec3w_t** %6, align 8
  %33 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to float
  %36 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %37 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to float
  %41 = fsub float %35, %40
  %42 = load float, float* %9, align 4
  %43 = fdiv float %41, %42
  store float %43, float* %12, align 4
  %44 = load %struct.vec3w_t*, %struct.vec3w_t** %6, align 8
  %45 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to float
  %48 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %49 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to float
  %53 = fsub float %47, %52
  %54 = load float, float* %10, align 4
  %55 = fdiv float %53, %54
  store float %55, float* %13, align 4
  %56 = load %struct.vec3w_t*, %struct.vec3w_t** %6, align 8
  %57 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to float
  %60 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %61 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to float
  %65 = fsub float %59, %64
  %66 = load float, float* %11, align 4
  %67 = fdiv float %65, %66
  store float %67, float* %14, align 4
  %68 = load float, float* %12, align 4
  %69 = fcmp olt float %68, -1.000000e+00
  br i1 %69, label %70, label %71

70:                                               ; preds = %4
  store float -1.000000e+00, float* %12, align 4
  br label %76

71:                                               ; preds = %4
  %72 = load float, float* %12, align 4
  %73 = fcmp ogt float %72, 1.000000e+00
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store float 1.000000e+00, float* %12, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %70
  %77 = load float, float* %13, align 4
  %78 = fcmp olt float %77, -1.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store float -1.000000e+00, float* %13, align 4
  br label %85

80:                                               ; preds = %76
  %81 = load float, float* %13, align 4
  %82 = fcmp ogt float %81, 1.000000e+00
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store float 1.000000e+00, float* %13, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %79
  %86 = load float, float* %14, align 4
  %87 = fcmp olt float %86, -1.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store float -1.000000e+00, float* %14, align 4
  br label %94

89:                                               ; preds = %85
  %90 = load float, float* %14, align 4
  %91 = fcmp ogt float %90, 1.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store float 1.000000e+00, float* %14, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %88
  %95 = load %struct.vec3w_t*, %struct.vec3w_t** %6, align 8
  %96 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %99 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %97, %101
  %103 = call i32 @abs(i64 %102)
  %104 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %105 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 10
  %109 = icmp sle i32 %103, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %94
  %111 = load float, float* %12, align 4
  %112 = load float, float* %14, align 4
  %113 = call i32 @atan2f(float %111, float %112)
  %114 = call float @RAD_TO_DEGREE(i32 %113)
  store float %114, float* %12, align 4
  %115 = load float, float* %12, align 4
  %116 = call i64 @isfinite(float %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load float, float* %12, align 4
  %120 = load %struct.orient_t*, %struct.orient_t** %7, align 8
  %121 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %120, i32 0, i32 1
  store float %119, float* %121, align 4
  %122 = load float, float* %12, align 4
  %123 = load %struct.orient_t*, %struct.orient_t** %7, align 8
  %124 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %123, i32 0, i32 2
  store float %122, float* %124, align 4
  br label %125

125:                                              ; preds = %118, %110
  br label %126

126:                                              ; preds = %125, %94
  %127 = load %struct.vec3w_t*, %struct.vec3w_t** %6, align 8
  %128 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %131 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %129, %133
  %135 = call i32 @abs(i64 %134)
  %136 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %137 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 10
  %141 = icmp sle i32 %135, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %126
  %143 = load float, float* %13, align 4
  %144 = load float, float* %14, align 4
  %145 = call i32 @atan2f(float %143, float %144)
  %146 = call float @RAD_TO_DEGREE(i32 %145)
  store float %146, float* %13, align 4
  %147 = load float, float* %13, align 4
  %148 = call i64 @isfinite(float %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load float, float* %13, align 4
  %152 = load %struct.orient_t*, %struct.orient_t** %7, align 8
  %153 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %152, i32 0, i32 3
  store float %151, float* %153, align 4
  %154 = load float, float* %13, align 4
  %155 = load %struct.orient_t*, %struct.orient_t** %7, align 8
  %156 = getelementptr inbounds %struct.orient_t, %struct.orient_t* %155, i32 0, i32 4
  store float %154, float* %156, align 4
  br label %157

157:                                              ; preds = %150, %142
  br label %158

158:                                              ; preds = %157, %126
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %163 = load %struct.orient_t*, %struct.orient_t** %7, align 8
  %164 = load i32, i32* @SMOOTH_ROLL, align 4
  %165 = call i32 @apply_smoothing(%struct.accel_t* %162, %struct.orient_t* %163, i32 %164)
  %166 = load %struct.accel_t*, %struct.accel_t** %5, align 8
  %167 = load %struct.orient_t*, %struct.orient_t** %7, align 8
  %168 = load i32, i32* @SMOOTH_PITCH, align 4
  %169 = call i32 @apply_smoothing(%struct.accel_t* %166, %struct.orient_t* %167, i32 %168)
  br label %170

170:                                              ; preds = %161, %158
  ret void
}

declare dso_local i32 @abs(i64) #1

declare dso_local float @RAD_TO_DEGREE(i32) #1

declare dso_local i32 @atan2f(float, float) #1

declare dso_local i64 @isfinite(float) #1

declare dso_local i32 @apply_smoothing(%struct.accel_t*, %struct.orient_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
