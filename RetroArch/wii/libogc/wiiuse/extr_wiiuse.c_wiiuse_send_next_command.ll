; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_send_next_command.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_send_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.cmd_blk_t* }
%struct.cmd_blk_t = type { i64, i32*, i32 }

@CMD_READY = common dso_local global i64 0, align 8
@CMD_SENT = common dso_local global i64 0, align 8
@WIIMOTE_STATE_RUMBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_send_next_command(%struct.wiimote_t* %0) #0 {
  %2 = alloca %struct.wiimote_t*, align 8
  %3 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %2, align 8
  %4 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %5 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %4, i32 0, i32 0
  %6 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  store %struct.cmd_blk_t* %6, %struct.cmd_blk_t** %3, align 8
  %7 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %8 = icmp ne %struct.wiimote_t* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %11 = call i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  br label %37

14:                                               ; preds = %9
  %15 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %3, align 8
  %16 = icmp ne %struct.cmd_blk_t* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %37

18:                                               ; preds = %14
  %19 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %3, align 8
  %20 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CMD_READY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %37

25:                                               ; preds = %18
  %26 = load i64, i64* @CMD_SENT, align 8
  %27 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %3, align 8
  %28 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %30 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %3, align 8
  %31 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %3, align 8
  %34 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wiiuse_io_write(%struct.wiimote_t* %29, i32* %32, i32 %35)
  br label %37

37:                                               ; preds = %25, %24, %17, %13
  ret void
}

declare dso_local i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t*) #1

declare dso_local i32 @wiiuse_io_write(%struct.wiimote_t*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
