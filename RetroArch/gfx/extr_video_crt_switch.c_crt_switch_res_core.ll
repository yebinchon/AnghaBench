; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_crt_switch.c_crt_switch_res_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_crt_switch.c_crt_switch_res_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ra_core_height = common dso_local global i32 0, align 4
@ra_core_hz = common dso_local global float 0.000000e+00, align 4
@ra_core_width = common dso_local global i32 0, align 4
@crt_center_adjust = common dso_local global i32 0, align 4
@crt_index = common dso_local global i32 0, align 4
@ra_tmp_height = common dso_local global i32 0, align 4
@ra_tmp_width = common dso_local global i32 0, align 4
@crt_tmp_center_adjust = common dso_local global i32 0, align 4
@fly_aspect = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crt_switch_res_core(i32 %0, i32 %1, float %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  store i32 320, i32* %8, align 4
  store i32 240, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %7
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* @ra_core_height, align 4
  %20 = load float, float* %10, align 4
  store float %20, float* @ra_core_hz, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @crt_compute_dynamic_width(i32 %24)
  store i32 %25, i32* @ra_core_width, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* @ra_core_width, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* @crt_center_adjust, align 4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* @crt_index, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load float, float* %10, align 4
  %35 = fcmp ogt float %34, 5.300000e+01
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load float, float* %10, align 4
  %38 = fmul float %37, 2.000000e+00
  store float %38, float* @ra_core_hz, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load float, float* %10, align 4
  %41 = fcmp ole float %40, 5.300000e+01
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store float 1.200000e+02, float* @ra_core_hz, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %43, %28
  %45 = call i32 (...) @crt_check_first_run()
  %46 = load i32, i32* @ra_tmp_height, align 4
  %47 = load i32, i32* @ra_core_height, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ra_core_width, align 4
  %51 = load i32, i32* @ra_tmp_width, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @crt_center_adjust, align 4
  %55 = load i32, i32* @crt_tmp_center_adjust, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49, %44
  %58 = load i32, i32* @ra_core_width, align 4
  %59 = load i32, i32* @ra_core_height, align 4
  %60 = call i32 @crt_screen_setup_aspect(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @ra_core_height, align 4
  store i32 %62, i32* @ra_tmp_height, align 4
  %63 = load i32, i32* @ra_core_width, align 4
  store i32 %63, i32* @ra_tmp_width, align 4
  %64 = load i32, i32* @crt_center_adjust, align 4
  store i32 %64, i32* @crt_tmp_center_adjust, align 4
  %65 = call i64 (...) @video_driver_get_aspect_ratio()
  %66 = load i64, i64* @fly_aspect, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i64, i64* @fly_aspect, align 8
  %70 = sitofp i64 %69 to float
  %71 = call i32 @video_driver_set_aspect_ratio_value(float %70)
  %72 = call i32 (...) @video_driver_apply_state_changes()
  br label %73

73:                                               ; preds = %68, %61
  ret void
}

declare dso_local i32 @crt_compute_dynamic_width(i32) #1

declare dso_local i32 @crt_check_first_run(...) #1

declare dso_local i32 @crt_screen_setup_aspect(i32, i32) #1

declare dso_local i64 @video_driver_get_aspect_ratio(...) #1

declare dso_local i32 @video_driver_set_aspect_ratio_value(float) #1

declare dso_local i32 @video_driver_apply_state_changes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
