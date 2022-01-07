; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_populate_settings_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_populate_settings_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_int_setting = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"state_slot\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"crt_switch_center_adjust\00", align 1
@DEFAULT_CRT_SWITCH_CENTER_ADJUST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"content_favorites_size\00", align 1
@default_content_favorites_size = common dso_local global i32 0, align 4
@DEFAULT_D3D10_GPU_INDEX = common dso_local global i32 0, align 4
@DEFAULT_D3D11_GPU_INDEX = common dso_local global i32 0, align 4
@DEFAULT_D3D12_GPU_INDEX = common dso_local global i32 0, align 4
@DEFAULT_VULKAN_GPU_INDEX = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_NETPLAY_CHECK_FRAMES = common dso_local global i32 0, align 4
@netplay_check_frames = common dso_local global i32 0, align 4
@wasapi_sh_buffer_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_int_setting* (%struct.TYPE_5__*, i32*)* @populate_settings_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_int_setting* @populate_settings_int(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.config_int_setting*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_int_setting*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i64 @calloc(i32 %10, i32 4)
  %12 = inttoptr i64 %11 to %struct.config_int_setting*
  store %struct.config_int_setting* %12, %struct.config_int_setting** %7, align 8
  %13 = load %struct.config_int_setting*, %struct.config_int_setting** %7, align 8
  %14 = icmp ne %struct.config_int_setting* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.config_int_setting* null, %struct.config_int_setting** %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  %20 = call i32 @SETTING_INT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %19, i32 0, i32 0, i32 0)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32, i32* @DEFAULT_CRT_SWITCH_CENTER_ADJUST, align 4
  %25 = call i32 @SETTING_INT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32 0, i32 %24, i32 0)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* @default_content_favorites_size, align 4
  %30 = call i32 @SETTING_INT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32 1, i32 %29, i32 0)
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.config_int_setting*, %struct.config_int_setting** %7, align 8
  store %struct.config_int_setting* %33, %struct.config_int_setting** %3, align 8
  br label %34

34:                                               ; preds = %16, %15
  %35 = load %struct.config_int_setting*, %struct.config_int_setting** %3, align 8
  ret %struct.config_int_setting* %35
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SETTING_INT(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
