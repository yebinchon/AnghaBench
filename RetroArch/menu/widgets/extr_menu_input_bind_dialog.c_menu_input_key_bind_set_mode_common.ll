; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_set_mode_common.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_set_mode_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.retro_keybind*, %struct.retro_keybind }
%struct.retro_keybind = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64, i8*, i8*, i8*, i32* }

@menu_input_binds = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@MENU_SETTINGS_CUSTOM_BIND_KEYBOARD = common dso_local global i8* null, align 8
@MENU_ENUM_LABEL_CUSTOM_BIND = common dso_local global i8* null, align 8
@DISPLAYLIST_INFO = common dso_local global i32 0, align 4
@input_config_binds = common dso_local global %struct.retro_keybind** null, align 8
@MENU_SETTINGS_BIND_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_BIND_LAST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CUSTOM_BIND_ALL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*)* @menu_input_key_bind_set_mode_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_input_key_bind_set_mode_common(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.retro_keybind*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.retro_keybind* null, %struct.retro_keybind** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = call i32* @menu_entries_get_menu_stack_ptr(i32 0)
  store i32* %15, i32** %10, align 8
  %16 = call i64 (...) @menu_navigation_get_selection()
  store i64 %16, i64* %11, align 8
  %17 = call i32 @menu_displaylist_info_init(%struct.TYPE_15__* %6)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %87 [
    i32 128, label %19
    i32 130, label %57
    i32 129, label %88
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.retro_keybind*
  store %struct.retro_keybind* %25, %struct.retro_keybind** %8, align 8
  %26 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %27 = icmp ne %struct.retro_keybind* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %90

29:                                               ; preds = %19
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = call i32 @setting_get_bind_type(%struct.TYPE_14__* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 0), align 8
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 1), align 4
  %34 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  store %struct.retro_keybind* %34, %struct.retro_keybind** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 3), align 8
  %35 = load %struct.retro_keybind*, %struct.retro_keybind** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 3), align 8
  %36 = bitcast %struct.retro_keybind* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.retro_keybind* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 4) to i8*), i8* align 4 %36, i64 4, i1 false)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 2), align 8
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  store i32* %38, i32** %39, align 8
  %40 = load i8*, i8** @MENU_SETTINGS_CUSTOM_BIND_KEYBOARD, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i8*, i8** @MENU_ENUM_LABEL_CUSTOM_BIND, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** @MENU_ENUM_LABEL_CUSTOM_BIND, align 8
  %47 = call i32 @msg_hash_to_str(i8* %46)
  %48 = call i8* @strdup(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @DISPLAYLIST_INFO, align 4
  %51 = call i32 @menu_displaylist_ctl(i32 %50, %struct.TYPE_15__* %6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = call i32 @menu_displaylist_process(%struct.TYPE_15__* %6)
  br label %55

55:                                               ; preds = %53, %29
  %56 = call i32 @menu_displaylist_info_free(%struct.TYPE_15__* %6)
  br label %89

57:                                               ; preds = %2
  %58 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_config_binds, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %58, i64 %60
  %62 = load %struct.retro_keybind*, %struct.retro_keybind** %61, align 8
  %63 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %62, i64 0
  store %struct.retro_keybind* %63, %struct.retro_keybind** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 3), align 8
  %64 = load %struct.retro_keybind*, %struct.retro_keybind** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 3), align 8
  %65 = bitcast %struct.retro_keybind* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.retro_keybind* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 4) to i8*), i8* align 4 %65, i64 4, i1 false)
  %66 = load i32, i32* @MENU_SETTINGS_BIND_BEGIN, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 0), align 8
  %67 = load i32, i32* @MENU_SETTINGS_BIND_LAST, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @menu_input_binds, i32 0, i32 1), align 4
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  store i32* %68, i32** %69, align 8
  %70 = load i8*, i8** @MENU_SETTINGS_CUSTOM_BIND_KEYBOARD, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load i8*, i8** @MENU_ENUM_LABEL_CUSTOM_BIND_ALL, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** @MENU_ENUM_LABEL_CUSTOM_BIND_ALL, align 8
  %77 = call i32 @msg_hash_to_str(i8* %76)
  %78 = call i8* @strdup(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* @DISPLAYLIST_INFO, align 4
  %81 = call i32 @menu_displaylist_ctl(i32 %80, %struct.TYPE_15__* %6)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %57
  %84 = call i32 @menu_displaylist_process(%struct.TYPE_15__* %6)
  br label %85

85:                                               ; preds = %83, %57
  %86 = call i32 @menu_displaylist_info_free(%struct.TYPE_15__* %6)
  br label %89

87:                                               ; preds = %2
  br label %88

88:                                               ; preds = %2, %87
  br label %89

89:                                               ; preds = %88, %85, %55
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %28
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_15__*) #1

declare dso_local i32 @setting_get_bind_type(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @msg_hash_to_str(i8*) #1

declare dso_local i32 @menu_displaylist_ctl(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_15__*) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
