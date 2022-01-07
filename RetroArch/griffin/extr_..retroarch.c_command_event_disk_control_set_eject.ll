; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_disk_control_set_eject.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_disk_control_set_eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.retro_disk_control_callback = type { i64 (i32)*, i32 }

@runloop_system = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@MSG_DISK_EJECTED = common dso_local global i32 0, align 4
@MSG_DISK_CLOSED = common dso_local global i32 0, align 4
@MSG_VIRTUAL_DISK_TRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@MSG_FAILED_TO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"eject\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @command_event_disk_control_set_eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_disk_control_set_eject(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.retro_disk_control_callback*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store %struct.retro_disk_control_callback* null, %struct.retro_disk_control_callback** %7, align 8
  store %struct.TYPE_3__* @runloop_system, %struct.TYPE_3__** %8, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %9, align 16
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.retro_disk_control_callback*
  store %struct.retro_disk_control_callback* %15, %struct.retro_disk_control_callback** %7, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %7, align 8
  %18 = icmp ne %struct.retro_disk_control_callback* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %7, align 8
  %21 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %16
  br label %80

25:                                               ; preds = %19
  %26 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %7, align 8
  %27 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %26, i32 0, i32 0
  %28 = load i64 (i32)*, i64 (i32)** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 %28(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @MSG_DISK_EJECTED, align 4
  %38 = call i8* @msg_hash_to_str(i32 %37)
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @MSG_DISK_CLOSED, align 4
  %41 = call i8* @msg_hash_to_str(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i8* [ %38, %36 ], [ %41, %39 ]
  %44 = load i32, i32* @MSG_VIRTUAL_DISK_TRAY, align 4
  %45 = call i8* @msg_hash_to_str(i32 %44)
  %46 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %33, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %45)
  br label %58

47:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %49 = load i32, i32* @MSG_FAILED_TO, align 4
  %50 = call i8* @msg_hash_to_str(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %55 = load i32, i32* @MSG_VIRTUAL_DISK_TRAY, align 4
  %56 = call i8* @msg_hash_to_str(i32 %55)
  %57 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %48, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %54, i8* %56)
  br label %58

58:                                               ; preds = %47, %42
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %60 = call i32 @string_is_empty(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %67 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %70 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %76 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %77 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %78 = call i32 @runloop_msg_queue_push(i8* %75, i32 1, i32 180, i32 1, i32* null, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  br label %80

80:                                               ; preds = %24, %79, %58
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

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
