; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_get_dpi_scale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_get_dpi_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float }
%struct.TYPE_8__ = type { float*, i32 }

@menu_display_get_dpi_scale.last_width = internal global i32 0, align 4
@menu_display_get_dpi_scale.last_height = internal global i32 0, align 4
@menu_display_get_dpi_scale.scale = internal global float 0.000000e+00, align 4
@menu_display_get_dpi_scale.scale_cached = internal global i32 0, align 4
@DIAGONAL_PIXELS_1080P = common dso_local global float 0.000000e+00, align 4
@DISPLAY_METRIC_DPI = common dso_local global i32 0, align 4
@REFERENCE_DPI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @menu_display_get_dpi_scale(i32 %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = load i32, i32* @menu_display_get_dpi_scale.scale_cached, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @menu_display_get_dpi_scale.last_width, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @menu_display_get_dpi_scale.last_height, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %100

26:                                               ; preds = %22, %18, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul i32 %30, %31
  %33 = add i32 %29, %32
  %34 = uitofp i32 %33 to double
  %35 = call i64 @sqrt(double %34)
  %36 = sitofp i64 %35 to float
  store float %36, float* %7, align 4
  %37 = load float, float* %7, align 4
  %38 = load float, float* @DIAGONAL_PIXELS_1080P, align 4
  %39 = fdiv float %37, %38
  store float %39, float* %8, align 4
  %40 = load i32, i32* @DISPLAY_METRIC_DPI, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store float* %9, float** %42, align 8
  %43 = call i64 @video_context_driver_get_metrics(%struct.TYPE_8__* %10)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %26
  %46 = load float, float* %9, align 4
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %48, label %95

48:                                               ; preds = %45
  %49 = load float, float* %7, align 4
  %50 = load float, float* %9, align 4
  %51 = fdiv float %49, %50
  store float %51, float* %11, align 4
  %52 = load float, float* %9, align 4
  %53 = load float, float* @REFERENCE_DPI, align 4
  %54 = fdiv float %52, %53
  store float %54, float* %12, align 4
  %55 = load float, float* %11, align 4
  %56 = fcmp ogt float %55, 2.400000e+01
  br i1 %56, label %57, label %77

57:                                               ; preds = %48
  %58 = load float, float* %11, align 4
  %59 = fcmp ogt float %58, 3.200000e+01
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %63

61:                                               ; preds = %57
  %62 = load float, float* %11, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi float [ 3.200000e+01, %60 ], [ %62, %61 ]
  store float %64, float* %13, align 4
  %65 = load float, float* %13, align 4
  %66 = fsub float %65, 2.400000e+01
  store float %66, float* %13, align 4
  %67 = load float, float* %13, align 4
  %68 = fdiv float %67, 8.000000e+00
  store float %68, float* %13, align 4
  %69 = load float, float* %13, align 4
  %70 = fsub float 1.000000e+00, %69
  %71 = load float, float* %12, align 4
  %72 = fmul float %70, %71
  %73 = load float, float* %13, align 4
  %74 = load float, float* %8, align 4
  %75 = fmul float %73, %74
  %76 = fadd float %72, %75
  store float %76, float* @menu_display_get_dpi_scale.scale, align 4
  br label %94

77:                                               ; preds = %48
  %78 = load float, float* %11, align 4
  %79 = fcmp olt float %78, 1.200000e+01
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load float, float* %11, align 4
  %82 = fdiv float %81, 1.200000e+01
  store float %82, float* %14, align 4
  %83 = load float, float* %14, align 4
  %84 = fsub float 1.000000e+00, %83
  %85 = load float, float* %8, align 4
  %86 = fmul float %84, %85
  %87 = load float, float* %14, align 4
  %88 = load float, float* %12, align 4
  %89 = fmul float %87, %88
  %90 = fadd float %86, %89
  store float %90, float* @menu_display_get_dpi_scale.scale, align 4
  br label %93

91:                                               ; preds = %77
  %92 = load float, float* %12, align 4
  store float %92, float* @menu_display_get_dpi_scale.scale, align 4
  br label %93

93:                                               ; preds = %91, %80
  br label %94

94:                                               ; preds = %93, %63
  br label %97

95:                                               ; preds = %45, %26
  %96 = load float, float* %8, align 4
  store float %96, float* @menu_display_get_dpi_scale.scale, align 4
  br label %97

97:                                               ; preds = %95, %94
  store i32 1, i32* @menu_display_get_dpi_scale.scale_cached, align 4
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* @menu_display_get_dpi_scale.last_width, align 4
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* @menu_display_get_dpi_scale.last_height, align 4
  br label %100

100:                                              ; preds = %97, %22
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = icmp ne %struct.TYPE_7__* %101, null
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load float, float* @menu_display_get_dpi_scale.scale, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 4
  %109 = fcmp ogt float %108, 0x3F1A36E2E0000000
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load float, float* %113, align 4
  br label %116

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %110
  %117 = phi float [ %114, %110 ], [ 1.000000e+00, %115 ]
  %118 = fmul float %104, %117
  store float %118, float* %3, align 4
  br label %121

119:                                              ; preds = %100
  %120 = load float, float* @menu_display_get_dpi_scale.scale, align 4
  store float %120, float* %3, align 4
  br label %121

121:                                              ; preds = %119, %116
  %122 = load float, float* %3, align 4
  ret float %122
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i64 @sqrt(double) #1

declare dso_local i64 @video_context_driver_get_metrics(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
