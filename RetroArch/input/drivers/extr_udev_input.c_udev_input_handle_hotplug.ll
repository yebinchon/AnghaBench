; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_handle_hotplug.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_handle_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.udev_device = type { i32 }

@UDEV_INPUT_KEYBOARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ID_INPUT_KEY\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ID_INPUT_MOUSE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ID_INPUT_TOUCHPAD\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@udev_handle_keyboard = common dso_local global i32 0, align 4
@UDEV_INPUT_MOUSE = common dso_local global i32 0, align 4
@udev_handle_mouse = common dso_local global i32 0, align 4
@UDEV_INPUT_TOUCHPAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"[udev]: Hotplug add %s: %s.\0A\00", align 1
@g_dev_type_str = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"[udev]: Hotplug remove %s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @udev_input_handle_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udev_input_handle_hotplug(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.udev_device*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %11 = load i32, i32* @UDEV_INPUT_KEYBOARD, align 4
  store i32 %11, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.udev_device* @udev_monitor_receive_device(i32 %14)
  store %struct.udev_device* %15, %struct.udev_device** %10, align 8
  %16 = load %struct.udev_device*, %struct.udev_device** %10, align 8
  %17 = icmp ne %struct.udev_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %108

19:                                               ; preds = %1
  %20 = load %struct.udev_device*, %struct.udev_device** %10, align 8
  %21 = call i8* @udev_device_get_property_value(%struct.udev_device* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  %22 = load %struct.udev_device*, %struct.udev_device** %10, align 8
  %23 = call i8* @udev_device_get_property_value(%struct.udev_device* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = load %struct.udev_device*, %struct.udev_device** %10, align 8
  %25 = call i8* @udev_device_get_property_value(%struct.udev_device* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %25, i8** %7, align 8
  %26 = load %struct.udev_device*, %struct.udev_device** %10, align 8
  %27 = call i8* @udev_device_get_action(%struct.udev_device* %26)
  store i8* %27, i8** %8, align 8
  %28 = load %struct.udev_device*, %struct.udev_device** %10, align 8
  %29 = call i8* @udev_device_get_devnode(%struct.udev_device* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @string_is_equal(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @UDEV_INPUT_KEYBOARD, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @udev_handle_keyboard, align 4
  store i32 %41, i32* %3, align 4
  br label %71

42:                                               ; preds = %36, %32, %19
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @string_is_equal(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @UDEV_INPUT_MOUSE, align 4
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @udev_handle_mouse, align 4
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %49, %45, %42
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @string_is_equal(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @UDEV_INPUT_TOUCHPAD, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @udev_handle_mouse, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %62, %58, %55
  br label %105

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @string_is_equal(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32*, i32** @g_dev_type_str, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %80, i8* %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @udev_input_add_device(%struct.TYPE_5__* %83, i32 %84, i8* %85, i32 %86)
  br label %104

88:                                               ; preds = %71
  %89 = load i8*, i8** %8, align 8
  %90 = call i64 @string_is_equal(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32*, i32** @g_dev_type_str, align 8
  %94 = load i32, i32* %4, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %97, i8* %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @udev_input_remove_device(%struct.TYPE_5__* %100, i8* %101)
  br label %103

103:                                              ; preds = %92, %88
  br label %104

104:                                              ; preds = %103, %75
  br label %105

105:                                              ; preds = %104, %68
  %106 = load %struct.udev_device*, %struct.udev_device** %10, align 8
  %107 = call i32 @udev_device_unref(%struct.udev_device* %106)
  br label %108

108:                                              ; preds = %105, %18
  ret void
}

declare dso_local %struct.udev_device* @udev_monitor_receive_device(i32) #1

declare dso_local i8* @udev_device_get_property_value(%struct.udev_device*, i8*) #1

declare dso_local i8* @udev_device_get_action(%struct.udev_device*) #1

declare dso_local i8* @udev_device_get_devnode(%struct.udev_device*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*) #1

declare dso_local i32 @udev_input_add_device(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @udev_input_remove_device(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
