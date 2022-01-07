; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_calc_out_rect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_calc_out_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_viewport = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.video_viewport*, i32, i32)* @xv_calc_out_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xv_calc_out_rect(i32 %0, %struct.video_viewport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_viewport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store %struct.video_viewport* %1, %struct.video_viewport** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %17 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call float (...) @video_driver_get_aspect_ratio()
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @video_viewport_get_scaled_integer(%struct.video_viewport* %27, i32 %28, i32 %29, float %30, i32 %31)
  br label %141

33:                                               ; preds = %4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %38 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %40 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %43 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %46 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  br label %140

47:                                               ; preds = %33
  %48 = call float (...) @video_driver_get_aspect_ratio()
  store float %48, float* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = uitofp i32 %49 to float
  %51 = load i32, i32* %8, align 4
  %52 = uitofp i32 %51 to float
  %53 = fdiv float %50, %52
  store float %53, float* %11, align 4
  %54 = load float, float* %11, align 4
  %55 = load float, float* %10, align 4
  %56 = fsub float %54, %55
  %57 = call double @fabs(float %56)
  %58 = fcmp olt double %57, 1.000000e-04
  br i1 %58, label %59, label %70

59:                                               ; preds = %47
  %60 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %61 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %63 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %66 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %69 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %139

70:                                               ; preds = %47
  %71 = load float, float* %11, align 4
  %72 = load float, float* %10, align 4
  %73 = fcmp ogt float %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = load float, float* %10, align 4
  %76 = load float, float* %11, align 4
  %77 = fdiv float %75, %76
  %78 = fpext float %77 to double
  %79 = fsub double %78, 1.000000e+00
  %80 = fdiv double %79, 2.000000e+00
  %81 = fadd double %80, 5.000000e-01
  %82 = fptrunc double %81 to float
  store float %82, float* %12, align 4
  %83 = load i32, i32* %7, align 4
  %84 = uitofp i32 %83 to double
  %85 = load float, float* %12, align 4
  %86 = fpext float %85 to double
  %87 = fsub double 5.000000e-01, %86
  %88 = fmul double %84, %87
  %89 = fptoui double %88 to i32
  %90 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %91 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %93 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %92, i32 0, i32 3
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = uitofp i32 %94 to double
  %96 = fmul double 2.000000e+00, %95
  %97 = load float, float* %12, align 4
  %98 = fpext float %97 to double
  %99 = fmul double %96, %98
  %100 = fptoui double %99 to i32
  %101 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %102 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %105 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  br label %138

106:                                              ; preds = %70
  %107 = load float, float* %11, align 4
  %108 = load float, float* %10, align 4
  %109 = fdiv float %107, %108
  %110 = fpext float %109 to double
  %111 = fsub double %110, 1.000000e+00
  %112 = fdiv double %111, 2.000000e+00
  %113 = fadd double %112, 5.000000e-01
  %114 = fptrunc double %113 to float
  store float %114, float* %13, align 4
  %115 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %116 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %115, i32 0, i32 2
  store i32 0, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = uitofp i32 %117 to double
  %119 = load float, float* %13, align 4
  %120 = fpext float %119 to double
  %121 = fsub double 5.000000e-01, %120
  %122 = fmul double %118, %121
  %123 = fptoui double %122 to i32
  %124 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %125 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %128 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %8, align 4
  %130 = uitofp i32 %129 to double
  %131 = fmul double 2.000000e+00, %130
  %132 = load float, float* %13, align 4
  %133 = fpext float %132 to double
  %134 = fmul double %131, %133
  %135 = fptoui double %134 to i32
  %136 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %137 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %106, %74
  br label %139

139:                                              ; preds = %138, %59
  br label %140

140:                                              ; preds = %139, %36
  br label %141

141:                                              ; preds = %140, %26
  ret void
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.video_viewport*, i32, i32, float, i32) #1

declare dso_local float @video_driver_get_aspect_ratio(...) #1

declare dso_local double @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
