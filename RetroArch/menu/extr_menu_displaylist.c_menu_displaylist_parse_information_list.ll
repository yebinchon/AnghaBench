; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_information_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_information_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.retro_system_info = type { i32 }

@MENU_ENUM_LABEL_VALUE_NO_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_INFORMATION = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SYSTEM_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SYSTEM_INFORMATION = common dso_local global i32 0, align 4
@RARCH_CTL_IS_PERFCNT_ENABLE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_FRONTEND_COUNTERS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FRONTEND_COUNTERS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_COUNTERS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_COUNTERS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CURSOR_MANAGER_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DATABASE_MANAGER_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DISC_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETWORK_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CURSOR_MANAGER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DATABASE_MANAGER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DISC_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NETWORK_INFORMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @menu_displaylist_parse_information_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_information_list(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.retro_system_info*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %6 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %6, %struct.retro_system_info** %5, align 8
  %7 = call i32 @core_info_get_current_core(%struct.TYPE_6__** %4)
  %8 = load %struct.retro_system_info*, %struct.retro_system_info** %5, align 8
  %9 = icmp ne %struct.retro_system_info* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = load %struct.retro_system_info*, %struct.retro_system_info** %5, align 8
  %12 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @string_is_empty(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %10
  %17 = load %struct.retro_system_info*, %struct.retro_system_info** %5, align 8
  %18 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NO_CORE, align 4
  %21 = call i32 @msg_hash_to_str(i32 %20)
  %22 = call i32 @string_is_equal(i32 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %16
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INFORMATION, align 4
  %37 = call i32 @msg_hash_to_str(i32 %36)
  %38 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFORMATION, align 4
  %39 = call i32 @msg_hash_to_str(i32 %38)
  %40 = load i32, i32* @MENU_ENUM_LABEL_CORE_INFORMATION, align 4
  %41 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %42 = call i64 @menu_entries_append_enum(i32 %35, i32 %37, i32 %39, i32 %40, i32 %41, i32 0, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %32
  br label %48

48:                                               ; preds = %47, %27, %24, %16, %10, %1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SYSTEM_INFORMATION, align 4
  %53 = call i32 @msg_hash_to_str(i32 %52)
  %54 = load i32, i32* @MENU_ENUM_LABEL_SYSTEM_INFORMATION, align 4
  %55 = call i32 @msg_hash_to_str(i32 %54)
  %56 = load i32, i32* @MENU_ENUM_LABEL_SYSTEM_INFORMATION, align 4
  %57 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %58 = call i64 @menu_entries_append_enum(i32 %51, i32 %53, i32 %55, i32 %56, i32 %57, i32 0, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32, i32* @RARCH_CTL_IS_PERFCNT_ENABLE, align 4
  %65 = call i64 @rarch_ctl(i32 %64, i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %63
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MENU_ENUM_LABEL_VALUE_FRONTEND_COUNTERS, align 4
  %72 = call i32 @msg_hash_to_str(i32 %71)
  %73 = load i32, i32* @MENU_ENUM_LABEL_FRONTEND_COUNTERS, align 4
  %74 = call i32 @msg_hash_to_str(i32 %73)
  %75 = load i32, i32* @MENU_ENUM_LABEL_FRONTEND_COUNTERS, align 4
  %76 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %77 = call i64 @menu_entries_append_enum(i32 %70, i32 %72, i32 %74, i32 %75, i32 %76, i32 0, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* %3, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %67
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_COUNTERS, align 4
  %87 = call i32 @msg_hash_to_str(i32 %86)
  %88 = load i32, i32* @MENU_ENUM_LABEL_CORE_COUNTERS, align 4
  %89 = call i32 @msg_hash_to_str(i32 %88)
  %90 = load i32, i32* @MENU_ENUM_LABEL_CORE_COUNTERS, align 4
  %91 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %92 = call i64 @menu_entries_append_enum(i32 %85, i32 %87, i32 %89, i32 %90, i32 %91, i32 0, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i32, i32* %3, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %82
  br label %98

98:                                               ; preds = %97, %63
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #1

declare dso_local i32 @core_info_get_current_core(%struct.TYPE_6__**) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @string_is_equal(i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @menu_entries_append_enum(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @rarch_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
