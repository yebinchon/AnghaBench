; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_retroarch_pause_checks.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_retroarch_pause_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@runloop_paused = common dso_local global i32 0, align 4
@runloop_idle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_PAUSED = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MSG_UNPAUSED = common dso_local global i32 0, align 4
@CMD_EVENT_DISCORD_UPDATE = common dso_local global i32 0, align 4
@DISCORD_PRESENCE_GAME_PAUSED = common dso_local global i32 0, align 4
@menu_widgets_inited = common dso_local global i64 0, align 8
@menu_widgets_paused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @retroarch_pause_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retroarch_pause_checks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @runloop_paused, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @runloop_idle, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %0
  %8 = load i32, i32* @MSG_PAUSED, align 4
  %9 = call i32 @msg_hash_to_str(i32 %8)
  %10 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @MSG_PAUSED, align 4
  %12 = call i32 @msg_hash_to_str(i32 %11)
  %13 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %14 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %15 = call i32 @runloop_msg_queue_push(i32 %12, i32 1, i32 1, i32 1, i32* null, i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  %19 = call i32 (...) @video_driver_cached_frame()
  br label %20

20:                                               ; preds = %18, %7
  br label %25

21:                                               ; preds = %0
  %22 = load i32, i32* @MSG_UNPAUSED, align 4
  %23 = call i32 @msg_hash_to_str(i32 %22)
  %24 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @video_driver_cached_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
