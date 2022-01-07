; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_disk_control_set_index.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_disk_control_set_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.retro_disk_control_callback = type { i32 (...)*, i64 (i32)* }

@runloop_system = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s: %u/%u.\00", align 1
@MSG_SETTING_DISK_IN_TRAY = common dso_local global i32 0, align 4
@MSG_REMOVED_DISK_FROM_TRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s %u/%u.\00", align 1
@MSG_FAILED_TO_SET_DISK = common dso_local global i32 0, align 4
@MSG_FAILED_TO_REMOVE_DISK_FROM_TRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @command_event_disk_control_set_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_disk_control_set_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.retro_disk_control_callback*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store %struct.retro_disk_control_callback* null, %struct.retro_disk_control_callback** %6, align 8
  store %struct.TYPE_3__* @runloop_system, %struct.TYPE_3__** %7, align 8
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %8, align 16
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.retro_disk_control_callback*
  store %struct.retro_disk_control_callback* %14, %struct.retro_disk_control_callback** %6, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %6, align 8
  %17 = icmp ne %struct.retro_disk_control_callback* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %6, align 8
  %20 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = icmp ne i32 (...)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %15
  br label %89

24:                                               ; preds = %18
  %25 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %6, align 8
  %26 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %25, i32 0, i32 0
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = call i32 (...) %27()
  store i32 %28, i32* %3, align 4
  %29 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %6, align 8
  %30 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %29, i32 0, i32 1
  %31 = load i64 (i32)*, i64 (i32)** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i64 %31(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %24
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %41 = load i32, i32* @MSG_SETTING_DISK_IN_TRAY, align 4
  %42 = call i8* @msg_hash_to_str(i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = add i32 %43, 1
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @snprintf(i8* %40, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %44, i32 %45)
  br label %52

47:                                               ; preds = %35
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %49 = load i32, i32* @MSG_REMOVED_DISK_FROM_TRAY, align 4
  %50 = call i8* @msg_hash_to_str(i32 %49)
  %51 = call i32 @strlcpy(i8* %48, i8* %50, i32 128)
  br label %52

52:                                               ; preds = %47, %39
  br label %71

53:                                               ; preds = %24
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %59 = load i32, i32* @MSG_FAILED_TO_SET_DISK, align 4
  %60 = call i8* @msg_hash_to_str(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = add i32 %61, 1
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @snprintf(i8* %58, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %60, i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %53
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %67 = load i32, i32* @MSG_FAILED_TO_REMOVE_DISK_FROM_TRAY, align 4
  %68 = call i8* @msg_hash_to_str(i32 %67)
  %69 = call i32 @strlcpy(i8* %66, i8* %68, i32 128)
  br label %70

70:                                               ; preds = %65, %57
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %52
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %73 = call i32 @string_is_empty(i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %80 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %84

81:                                               ; preds = %75
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %83 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %86 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %87 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %88 = call i32 @runloop_msg_queue_push(i8* %85, i32 1, i32 180, i32 1, i32* null, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %23, %84, %71
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
