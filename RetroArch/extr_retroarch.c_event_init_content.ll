; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_event_init_content.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_event_init_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@current_core_type = common dso_local global i64 0, align 8
@CORE_TYPE_PLAIN = common dso_local global i64 0, align 8
@rarch_use_sram = common dso_local global i32 0, align 4
@CORE_TYPE_DUMMY = common dso_local global i64 0, align 8
@runloop_core_running = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.\0A\00", align 1
@MSG_SKIPPING_SRAM_LOAD = common dso_local global i32 0, align 4
@CMD_EVENT_NETPLAY_INIT = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @event_init_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_init_content() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @content_get_status(i32* %2, i32* %3)
  %5 = load i64, i64* @current_core_type, align 8
  %6 = load i64, i64* @CORE_TYPE_PLAIN, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i1 [ false, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  store i32 %14, i32* @rarch_use_sram, align 4
  %15 = load i64, i64* @current_core_type, align 8
  %16 = load i64, i64* @CORE_TYPE_DUMMY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %1, align 4
  br label %44

19:                                               ; preds = %12
  %20 = call i32 (...) @content_set_subsystem_info()
  %21 = call i32 @content_get_status(i32* %2, i32* %3)
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 (...) @path_fill_names()
  br label %26

26:                                               ; preds = %24, %19
  %27 = call i32 (...) @content_init()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* @runloop_core_running, align 4
  store i32 0, i32* %1, align 4
  br label %44

30:                                               ; preds = %26
  %31 = call i32 (...) @command_event_set_savestate_auto_index()
  %32 = call i64 (...) @event_load_save_files()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @MSG_SKIPPING_SRAM_LOAD, align 4
  %36 = call i32 @msg_hash_to_str(i32 %35)
  %37 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i32 (...) @command_event_load_auto_state()
  %40 = call i32 (...) @bsv_movie_deinit()
  %41 = call i32 (...) @bsv_movie_init()
  %42 = load i32, i32* @CMD_EVENT_NETPLAY_INIT, align 4
  %43 = call i32 @command_event(i32 %42, i32* null)
  store i32 1, i32* %1, align 4
  br label %44

44:                                               ; preds = %38, %29, %18
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @content_get_status(i32*, i32*) #1

declare dso_local i32 @content_set_subsystem_info(...) #1

declare dso_local i32 @path_fill_names(...) #1

declare dso_local i32 @content_init(...) #1

declare dso_local i32 @command_event_set_savestate_auto_index(...) #1

declare dso_local i64 @event_load_save_files(...) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @command_event_load_auto_state(...) #1

declare dso_local i32 @bsv_movie_deinit(...) #1

declare dso_local i32 @bsv_movie_init(...) #1

declare dso_local i32 @command_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
