; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_disk_control_append_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_disk_control_append_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.retro_game_info = type { i8*, i32 }
%struct.retro_disk_control_callback = type { i32 (...)*, i32 (i32, %struct.retro_game_info*)*, i32 (...)* }

@runloop_system = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@MSG_APPENDED_DISK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@RARCH_PATH_SUBSYSTEM = common dso_local global i32 0, align 4
@RARCH_PATH_NAMES = common dso_local global i32 0, align 4
@CMD_EVENT_AUTOSAVE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @command_event_disk_control_append_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_event_disk_control_append_image(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.retro_game_info, align 8
  %7 = alloca %struct.retro_disk_control_callback*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %9 = bitcast %struct.retro_game_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  store %struct.retro_disk_control_callback* null, %struct.retro_disk_control_callback** %7, align 8
  store %struct.TYPE_3__* @runloop_system, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %10, align 16
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.retro_disk_control_callback*
  store %struct.retro_disk_control_callback* %16, %struct.retro_disk_control_callback** %7, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %7, align 8
  %19 = icmp ne %struct.retro_disk_control_callback* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %69

21:                                               ; preds = %17
  %22 = call i32 @command_event_disk_control_set_eject(i32 1, i32 0)
  %23 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %7, align 8
  %24 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %23, i32 0, i32 2
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = call i32 (...) %25()
  %27 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %7, align 8
  %28 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %27, i32 0, i32 0
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %69

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds %struct.retro_game_info, %struct.retro_game_info* %6, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.retro_disk_control_callback*, %struct.retro_disk_control_callback** %7, align 8
  %40 = getelementptr inbounds %struct.retro_disk_control_callback, %struct.retro_disk_control_callback* %39, i32 0, i32 1
  %41 = load i32 (i32, %struct.retro_game_info*)*, i32 (i32, %struct.retro_game_info*)** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 %41(i32 %42, %struct.retro_game_info* %6)
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %45 = load i32, i32* @MSG_APPENDED_DISK, align 4
  %46 = call i8* @msg_hash_to_str(i32 %45)
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @snprintf(i8* %44, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %50 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %52 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %53 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %54 = call i32 @runloop_msg_queue_push(i8* %51, i32 0, i32 180, i32 1, i32* null, i32 %52, i32 %53)
  %55 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %56 = call i64 @path_is_empty(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %34
  %59 = load i32, i32* @RARCH_PATH_NAMES, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @path_set(i32 %59, i8* %60)
  %62 = call i32 (...) @path_fill_names()
  br label %63

63:                                               ; preds = %58, %34
  %64 = load i32, i32* @CMD_EVENT_AUTOSAVE_INIT, align 4
  %65 = call i32 @command_event(i32 %64, i32* null)
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @command_event_disk_control_set_index(i32 %66)
  %68 = call i32 @command_event_disk_control_set_eject(i32 0, i32 0)
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %33, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @command_event_disk_control_set_eject(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i8*) #2

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i64 @path_is_empty(i32) #2

declare dso_local i32 @path_set(i32, i8*) #2

declare dso_local i32 @path_fill_names(...) #2

declare dso_local i32 @command_event(i32, i32*) #2

declare dso_local i32 @command_event_disk_control_set_index(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
