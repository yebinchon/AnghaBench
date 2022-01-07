; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 (i32, i64, i64, i32, i32, i32, i32, i32)* }
%struct.TYPE_9__ = type { i64, i32, i32 }

@input_driver_axis_threshold = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_11__* null, align 8
@input_autoconf_binds = common dso_local global i32* null, align 8
@bsv_movie_state_handle = common dso_local global %struct.TYPE_12__* null, align 8
@bsv_movie_state = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@RETRO_DEVICE_MASK = common dso_local global i32 0, align 4
@current_input = common dso_local global %struct.TYPE_10__* null, align 8
@current_input_data = common dso_local global i32 0, align 4
@libretro_input_binds = common dso_local global i32 0, align 4
@input_driver_flushing_input = common dso_local global i32 0, align 4
@input_driver_block_libretro_input = common dso_local global i32 0, align 4
@RETRO_DEVICE_JOYPAD = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_state(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @input_driver_axis_threshold, align 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @configuration_settings, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** @input_autoconf_binds, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = call i64 (...) @BSV_MOVIE_IS_PLAYBACK_ON()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bsv_movie_state_handle, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @intfstream_read(i32 %37, i32* %13, i32 2)
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @swap_if_big16(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %119

43:                                               ; preds = %34
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bsv_movie_state, i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_input, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32 (i32, i64, i64, i32, i32, i32, i32, i32)*, i32 (i32, i64, i64, i32, i32, i32, i32, i32)** %49, align 8
  %51 = load i32, i32* @current_input_data, align 4
  %52 = load i32, i32* @libretro_input_binds, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 %50(i32 %51, i64 %59, i64 %61, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @input_driver_flushing_input, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %107, label %65

65:                                               ; preds = %44
  %66 = load i32, i32* @input_driver_block_libretro_input, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @RETRO_DEVICE_JOYPAD, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @input_state_device(i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 1)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i32, i32* %14, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %89, %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %77

98:                                               ; preds = %77
  br label %106

99:                                               ; preds = %72, %68
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @input_state_device(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 0)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %99, %98
  br label %107

107:                                              ; preds = %106, %65, %44
  %108 = call i64 (...) @BSV_MOVIE_IS_PLAYBACK_OFF()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @swap_if_big16(i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bsv_movie_state_handle, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @intfstream_write(i32 %115, i32* %11, i32 2)
  br label %117

117:                                              ; preds = %110, %107
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %40
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i64 @BSV_MOVIE_IS_PLAYBACK_ON(...) #1

declare dso_local i32 @intfstream_read(i32, i32*, i32) #1

declare dso_local i32 @swap_if_big16(i32) #1

declare dso_local i32 @input_state_device(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @BSV_MOVIE_IS_PLAYBACK_OFF(...) #1

declare dso_local i32 @intfstream_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
