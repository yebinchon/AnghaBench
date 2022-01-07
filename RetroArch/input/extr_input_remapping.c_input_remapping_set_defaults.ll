; ModuleID = '/home/carl/AnghaBench/RetroArch/input/extr_input_remapping.c_input_remapping_set_defaults.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/extr_input_remapping.c_input_remapping_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32**, i64*, i64*, i32** }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@input_config_binds = common dso_local global %struct.retro_keybind** null, align 8
@RETROK_UNKNOWN = common dso_local global i32 0, align 4
@old_analog_dpad_mode = common dso_local global i64* null, align 8
@old_libretro_device = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_remapping_set_defaults(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.retro_keybind*, align 8
  store i32 %0, i32* %2, align 4
  %8 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = call %struct.TYPE_10__* (...) @global_get_ptr()
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %154

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @string_is_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @free(i32* %27)
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE, align 4
  %34 = call i32 @rarch_ctl(i32 %33, i32* null)
  %35 = load i32, i32* @RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE, align 4
  %36 = call i32 @rarch_ctl(i32 %35, i32* null)
  %37 = load i32, i32* @RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE, align 4
  %38 = call i32 @rarch_ctl(i32 %37, i32* null)
  br label %39

39:                                               ; preds = %29, %13
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %151, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MAX_USERS, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %154

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %107, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %48 = add nsw i32 %47, 8
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %110

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_config_binds, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %55, i64 %57
  %59 = load %struct.retro_keybind*, %struct.retro_keybind** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %59, i64 %61
  store %struct.retro_keybind* %62, %struct.retro_keybind** %7, align 8
  %63 = load %struct.retro_keybind*, %struct.retro_keybind** %7, align 8
  %64 = icmp ne %struct.retro_keybind* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %54
  %66 = load %struct.retro_keybind*, %struct.retro_keybind** %7, align 8
  %67 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %68, i32* %79, align 4
  br label %80

80:                                               ; preds = %65, %54
  %81 = load i32, i32* @RETROK_UNKNOWN, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %81, i32* %92, align 4
  br label %106

93:                                               ; preds = %50
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %94, i32* %105, align 4
  br label %106

106:                                              ; preds = %93, %80
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %45

110:                                              ; preds = %45
  %111 = load i64*, i64** @old_analog_dpad_mode, align 8
  %112 = load i32, i32* %3, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load i64*, i64** @old_analog_dpad_mode, align 8
  %119 = load i32, i32* %3, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %122, i64* %129, align 8
  br label %130

130:                                              ; preds = %117, %110
  %131 = load i64*, i64** @old_libretro_device, align 8
  %132 = load i32, i32* %3, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %130
  %138 = load i64*, i64** @old_libretro_device, align 8
  %139 = load i32, i32* %3, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64 %142, i64* %149, align 8
  br label %150

150:                                              ; preds = %137, %130
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %3, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %40

154:                                              ; preds = %12, %40
  ret void
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_10__* @global_get_ptr(...) #1

declare dso_local i32 @string_is_empty(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
