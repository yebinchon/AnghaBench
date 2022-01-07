; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_libretro_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_libretro_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.retro_controller_description = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }

@MENU_ENUM_LABEL_VALUE_NONE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RETROPAD = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RETROPAD_WITH_ANALOG = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i64)* @setting_get_string_representation_uint_libretro_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_get_string_representation_uint_libretro_device(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.retro_controller_description*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.retro_controller_description* null, %struct.retro_controller_description** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = call %struct.TYPE_7__* (...) @runloop_get_system_info()
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %76

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @input_config_get_device(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.retro_controller_description* @libretro_find_controller_description(i32* %38, i32 %39)
  store %struct.retro_controller_description* %40, %struct.retro_controller_description** %9, align 8
  br label %41

41:                                               ; preds = %31, %24
  br label %42

42:                                               ; preds = %41, %16
  %43 = load %struct.retro_controller_description*, %struct.retro_controller_description** %9, align 8
  %44 = icmp ne %struct.retro_controller_description* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.retro_controller_description*, %struct.retro_controller_description** %9, align 8
  %47 = getelementptr inbounds %struct.retro_controller_description, %struct.retro_controller_description* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %63 [
    i32 128, label %54
    i32 129, label %57
    i32 130, label %60
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NONE, align 4
  %56 = call i8* @msg_hash_to_str(i32 %55)
  store i8* %56, i8** %10, align 8
  br label %66

57:                                               ; preds = %52
  %58 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RETROPAD, align 4
  %59 = call i8* @msg_hash_to_str(i32 %58)
  store i8* %59, i8** %10, align 8
  br label %66

60:                                               ; preds = %52
  %61 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RETROPAD_WITH_ANALOG, align 4
  %62 = call i8* @msg_hash_to_str(i32 %61)
  store i8* %62, i8** %10, align 8
  br label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @MENU_ENUM_LABEL_VALUE_UNKNOWN, align 4
  %65 = call i8* @msg_hash_to_str(i32 %64)
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %63, %60, %57, %54
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @string_is_empty(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @strlcpy(i8* %72, i8* %73, i64 %74)
  br label %76

76:                                               ; preds = %15, %71, %67
  ret void
}

declare dso_local %struct.TYPE_7__* @runloop_get_system_info(...) #1

declare dso_local i32 @input_config_get_device(i32) #1

declare dso_local %struct.retro_controller_description* @libretro_find_controller_description(i32*, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
