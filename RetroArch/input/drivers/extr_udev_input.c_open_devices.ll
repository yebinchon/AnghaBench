; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_open_devices.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_open_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.udev_list_entry = type { i32 }
%struct.udev_enumerate = type { i32 }
%struct.udev_device = type { i32 }

@g_dev_type_str = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"[udev] Failed to open device: %s (%s).\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"[udev]: %s #%d (%s).\0A\00", align 1
@UDEV_INPUT_KEYBOARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @open_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_devices(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.udev_list_entry*, align 8
  %10 = alloca %struct.udev_list_entry*, align 8
  %11 = alloca %struct.udev_enumerate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.udev_device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i8**, i8*** @g_dev_type_str, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  store %struct.udev_list_entry* null, %struct.udev_list_entry** %9, align 8
  store %struct.udev_list_entry* null, %struct.udev_list_entry** %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.udev_enumerate* @udev_enumerate_new(i32 %24)
  store %struct.udev_enumerate* %25, %struct.udev_enumerate** %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.udev_enumerate*, %struct.udev_enumerate** %11, align 8
  %27 = icmp ne %struct.udev_enumerate* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

29:                                               ; preds = %3
  %30 = load %struct.udev_enumerate*, %struct.udev_enumerate** %11, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @udev_enumerate_add_match_property(%struct.udev_enumerate* %30, i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.udev_enumerate*, %struct.udev_enumerate** %11, align 8
  %34 = call i32 @udev_enumerate_scan_devices(%struct.udev_enumerate* %33)
  %35 = load %struct.udev_enumerate*, %struct.udev_enumerate** %11, align 8
  %36 = call %struct.udev_list_entry* @udev_enumerate_get_list_entry(%struct.udev_enumerate* %35)
  store %struct.udev_list_entry* %36, %struct.udev_list_entry** %9, align 8
  %37 = load %struct.udev_list_entry*, %struct.udev_list_entry** %9, align 8
  store %struct.udev_list_entry* %37, %struct.udev_list_entry** %10, align 8
  br label %38

38:                                               ; preds = %90, %29
  %39 = load %struct.udev_list_entry*, %struct.udev_list_entry** %10, align 8
  %40 = icmp ne %struct.udev_list_entry* %39, null
  br i1 %40, label %41, label %93

41:                                               ; preds = %38
  %42 = load %struct.udev_list_entry*, %struct.udev_list_entry** %10, align 8
  %43 = call i8* @udev_list_entry_get_name(%struct.udev_list_entry* %42)
  store i8* %43, i8** %13, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = call %struct.udev_device* @udev_device_new_from_syspath(i32 %46, i8* %47)
  store %struct.udev_device* %48, %struct.udev_device** %14, align 8
  %49 = load %struct.udev_device*, %struct.udev_device** %14, align 8
  %50 = call i8* @udev_device_get_devnode(%struct.udev_device* %49)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %41
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = load i32, i32* @O_NONBLOCK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @open(i8* %54, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %86

61:                                               ; preds = %53
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @udev_input_add_device(%struct.TYPE_4__* %62, i32 %63, i8* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %71)
  br label %83

73:                                               ; preds = %61
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @UDEV_INPUT_KEYBOARD, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %78, i32 %79, i8* %81)
  br label %83

83:                                               ; preds = %73, %68
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %83, %53
  br label %87

87:                                               ; preds = %86, %41
  %88 = load %struct.udev_device*, %struct.udev_device** %14, align 8
  %89 = call i32 @udev_device_unref(%struct.udev_device* %88)
  br label %90

90:                                               ; preds = %87
  %91 = load %struct.udev_list_entry*, %struct.udev_list_entry** %10, align 8
  %92 = call %struct.udev_list_entry* @udev_list_entry_get_next(%struct.udev_list_entry* %91)
  store %struct.udev_list_entry* %92, %struct.udev_list_entry** %10, align 8
  br label %38

93:                                               ; preds = %38
  %94 = load %struct.udev_enumerate*, %struct.udev_enumerate** %11, align 8
  %95 = call i32 @udev_enumerate_unref(%struct.udev_enumerate* %94)
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %28
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.udev_enumerate* @udev_enumerate_new(i32) #1

declare dso_local i32 @udev_enumerate_add_match_property(%struct.udev_enumerate*, i8*, i8*) #1

declare dso_local i32 @udev_enumerate_scan_devices(%struct.udev_enumerate*) #1

declare dso_local %struct.udev_list_entry* @udev_enumerate_get_list_entry(%struct.udev_enumerate*) #1

declare dso_local i8* @udev_list_entry_get_name(%struct.udev_list_entry*) #1

declare dso_local %struct.udev_device* @udev_device_new_from_syspath(i32, i8*) #1

declare dso_local i8* @udev_device_get_devnode(%struct.udev_device*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @udev_input_add_device(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #1

declare dso_local %struct.udev_list_entry* @udev_list_entry_get_next(%struct.udev_list_entry*) #1

declare dso_local i32 @udev_enumerate_unref(%struct.udev_enumerate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
