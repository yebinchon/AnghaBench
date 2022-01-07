; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_bind_state = type { i64, i64, i32, i32, i32*, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"[%s]\0Apress keyboard, mouse or joypad\0A(timeout %d %s)\00", align 1
@menu_input_binds = common dso_local global %struct.menu_bind_state zeroinitializer, align 8
@MENU_SETTINGS_BIND_BEGIN = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_VALUE_SECONDS = common dso_local global i32 0, align 4
@RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS = common dso_local global i32 0, align 4
@menu_bind_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_input_key_bind_iterate(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.menu_bind_state, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %140

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 0), align 8
  %23 = load i64, i64* @MENU_SETTINGS_BIND_BEGIN, align 8
  %24 = sub nsw i64 %22, %23
  %25 = call i8* @input_config_bind_map_get_desc(i64 %24)
  %26 = call i32 @rarch_timer_get_timeout(i32* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 2))
  %27 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SECONDS, align 4
  %28 = call i8* @msg_hash_to_str(i32 %27)
  %29 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %18, i32 %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26, i8* %28)
  %30 = call i32 @rarch_timer_tick(i32* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 2))
  %31 = call i32 @rarch_timer_tick(i32* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 3))
  %32 = call i64 @rarch_timer_has_expired(i32* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 2))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %15
  %35 = call %struct.TYPE_11__* (...) @input_get_ptr()
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %6, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i64, i64* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 0), align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 0), align 8
  %44 = load i32*, i32** getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 4), align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 4), align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rarch_timer_begin_new_time(i32* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 3), i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rarch_timer_begin_new_time(i32* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 2), i32 %54)
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %41, %15
  %57 = load i64, i64* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 0), align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 1), align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = call i32 (...) @input_driver_set_flushing_input()
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS, align 4
  %66 = call i32 @input_keyboard_ctl(i32 %65, i32* null)
  br label %67

67:                                               ; preds = %64, %60
  store i32 1, i32* %2, align 4
  br label %140

68:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  %69 = bitcast %struct.menu_bind_state* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.menu_bind_state* @menu_input_binds to i8*), i64 48, i1 false)
  %70 = call %struct.TYPE_11__* (...) @input_get_ptr()
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %9, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* @menu_bind_port, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @menu_input_key_bind_poll_bind_state(%struct.menu_bind_state* %8, i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i64, i64* getelementptr inbounds (%struct.menu_bind_state, %struct.menu_bind_state* @menu_input_binds, i32 0, i32 6), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83, %76
  %87 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 5
  %88 = call i64 @menu_input_key_bind_poll_find_trigger(%struct.menu_bind_state* @menu_input_binds, %struct.menu_bind_state* %8, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %83
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %138

94:                                               ; preds = %91
  %95 = call %struct.TYPE_11__* (...) @input_get_ptr()
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %94
  %106 = call i32 (...) @input_driver_set_flushing_input()
  %107 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* @RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS, align 4
  %117 = call i32 @input_keyboard_ctl(i32 %116, i32* null)
  store i32 1, i32* %2, align 4
  br label %140

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %119, align 8
  %122 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 5
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 3
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @rarch_timer_begin_new_time(i32* %126, i32 %130)
  %132 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %8, i32 0, i32 2
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rarch_timer_begin_new_time(i32* %132, i32 %136)
  br label %138

138:                                              ; preds = %118, %91
  %139 = bitcast %struct.menu_bind_state* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.menu_bind_state* @menu_input_binds to i8*), i8* align 8 %139, i64 48, i1 false)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %115, %67, %14
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i8* @input_config_bind_map_get_desc(i64) #1

declare dso_local i32 @rarch_timer_get_timeout(i32*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @rarch_timer_tick(i32*) #1

declare dso_local i64 @rarch_timer_has_expired(i32*) #1

declare dso_local %struct.TYPE_11__* @input_get_ptr(...) #1

declare dso_local i32 @rarch_timer_begin_new_time(i32*, i32) #1

declare dso_local i32 @input_driver_set_flushing_input(...) #1

declare dso_local i32 @input_keyboard_ctl(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @menu_input_key_bind_poll_bind_state(%struct.menu_bind_state*, i32, i32) #1

declare dso_local i64 @menu_input_key_bind_poll_find_trigger(%struct.menu_bind_state*, %struct.menu_bind_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
