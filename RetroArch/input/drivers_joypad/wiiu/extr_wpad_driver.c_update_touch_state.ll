; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_update_touch_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_update_touch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.video_viewport = type { i64, i64, i64, i64, i32 }

@VPAD_VALID = common dso_local global i64 0, align 8
@VPAD_BUTTON_TOUCH = common dso_local global i32 0, align 4
@WIIU_DEVICE_INDEX_TOUCHPAD = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x i32]*, i32*, %struct.TYPE_9__*)* @update_touch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_touch_state([2 x i32]* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca [2 x i32]*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.video_viewport, align 8
  %9 = alloca i32, align 4
  store [2 x i32]* %0, [2 x i32]** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = bitcast %struct.video_viewport* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VPAD_VALID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17, %3
  %25 = load i32, i32* @VPAD_BUTTON_TOUCH, align 4
  %26 = xor i32 %25, -1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %77

30:                                               ; preds = %17
  %31 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %8)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = call i32 @get_touch_coordinates(%struct.TYPE_8__* %7, %struct.TYPE_9__* %32, %struct.video_viewport* %8, i32* %9)
  %34 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %37, %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scale_touchpad(i64 %35, i64 %40, i32 -32767, i32 32767, i32 %42)
  %44 = load [2 x i32]*, [2 x i32]** %4, align 8
  %45 = load i64, i64* @WIIU_DEVICE_INDEX_TOUCHPAD, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 %45
  %47 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %52, %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @scale_touchpad(i64 %50, i64 %55, i32 -32767, i32 32767, i32 %57)
  %59 = load [2 x i32]*, [2 x i32]** %4, align 8
  %60 = load i64, i64* @WIIU_DEVICE_INDEX_TOUCHPAD, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %59, i64 %60
  %62 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %61, i64 0, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %30
  %67 = load i32, i32* @VPAD_BUTTON_TOUCH, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %30
  %72 = load i32, i32* @VPAD_BUTTON_TOUCH, align 4
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %24, %71, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #2

declare dso_local i32 @get_touch_coordinates(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.video_viewport*, i32*) #2

declare dso_local i32 @scale_touchpad(i64, i64, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
