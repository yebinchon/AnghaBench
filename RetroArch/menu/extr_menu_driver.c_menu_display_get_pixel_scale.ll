; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_get_pixel_scale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_get_pixel_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float }

@menu_display_get_pixel_scale.last_width = internal global i32 0, align 4
@menu_display_get_pixel_scale.last_height = internal global i32 0, align 4
@menu_display_get_pixel_scale.scale = internal global float 0.000000e+00, align 4
@menu_display_get_pixel_scale.scale_cached = internal global i32 0, align 4
@DIAGONAL_PIXELS_1080P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @menu_display_get_pixel_scale(i32 %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* @menu_display_get_pixel_scale.scale_cached, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @menu_display_get_pixel_scale.last_width, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @menu_display_get_pixel_scale.last_height, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %10, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul i32 %22, %23
  %25 = add i32 %21, %24
  %26 = uitofp i32 %25 to double
  %27 = call i32 @sqrt(double %26)
  %28 = load i32, i32* @DIAGONAL_PIXELS_1080P, align 4
  %29 = sdiv i32 %27, %28
  %30 = sitofp i32 %29 to float
  store float %30, float* @menu_display_get_pixel_scale.scale, align 4
  store i32 1, i32* @menu_display_get_pixel_scale.scale_cached, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* @menu_display_get_pixel_scale.last_width, align 4
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* @menu_display_get_pixel_scale.last_height, align 4
  br label %33

33:                                               ; preds = %18, %14
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load float, float* @menu_display_get_pixel_scale.scale, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fcmp ogt float %41, 0x3F1A36E2E0000000
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi float [ %47, %43 ], [ 1.000000e+00, %48 ]
  %51 = fmul float %37, %50
  store float %51, float* %3, align 4
  br label %54

52:                                               ; preds = %33
  %53 = load float, float* @menu_display_get_pixel_scale.scale, align 4
  store float %53, float* %3, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load float, float* %3, align 4
  ret float %55
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i32 @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
