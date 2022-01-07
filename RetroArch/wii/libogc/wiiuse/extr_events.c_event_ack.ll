; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_event_ack.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_event_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, i32, %struct.cmd_blk_t* }
%struct.cmd_blk_t = type { i64, i64*, i32, i32 (%struct.wiimote_t*, i32*, i32)*, %struct.cmd_blk_t* }

@CMD_SENT = common dso_local global i64 0, align 8
@WM_CMD_READ_DATA = common dso_local global i64 0, align 8
@WM_CMD_CTRL_STATUS = common dso_local global i64 0, align 8
@WIIUSE_ACK = common dso_local global i32 0, align 4
@CMD_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_t*, i64*)* @event_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_ack(%struct.wiimote_t* %0, i64* %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %7 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %6, i32 0, i32 2
  %8 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  store %struct.cmd_blk_t* %8, %struct.cmd_blk_t** %5, align 8
  %9 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %9, i64* %10)
  %12 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %13 = icmp ne %struct.cmd_blk_t* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %2
  %15 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %16 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CMD_SENT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %51, label %20

20:                                               ; preds = %14
  %21 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %22 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WM_CMD_READ_DATA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %51, label %28

28:                                               ; preds = %20
  %29 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %30 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WM_CMD_CTRL_STATUS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %28
  %37 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %38 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %36, %28, %20, %14, %2
  br label %82

52:                                               ; preds = %46
  %53 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %54 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %53, i32 0, i32 4
  %55 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %54, align 8
  %56 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %57 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %56, i32 0, i32 2
  store %struct.cmd_blk_t* %55, %struct.cmd_blk_t** %57, align 8
  %58 = load i32, i32* @WIIUSE_ACK, align 4
  %59 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %60 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* @CMD_DONE, align 8
  %62 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %63 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %65 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %64, i32 0, i32 3
  %66 = load i32 (%struct.wiimote_t*, i32*, i32)*, i32 (%struct.wiimote_t*, i32*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.wiimote_t*, i32*, i32)* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %52
  %69 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %70 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %69, i32 0, i32 3
  %71 = load i32 (%struct.wiimote_t*, i32*, i32)*, i32 (%struct.wiimote_t*, i32*, i32)** %70, align 8
  %72 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %73 = call i32 %71(%struct.wiimote_t* %72, i32* null, i32 0)
  br label %74

74:                                               ; preds = %68, %52
  %75 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %76 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %75, i32 0, i32 0
  %77 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %5, align 8
  %78 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %77, i32 0, i32 2
  %79 = call i32 @__lwp_queue_append(i32* %76, i32* %78)
  %80 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %81 = call i32 @wiiuse_send_next_command(%struct.wiimote_t* %80)
  br label %82

82:                                               ; preds = %74, %51
  ret void
}

declare dso_local i32 @wiiuse_pressed_buttons(%struct.wiimote_t*, i64*) #1

declare dso_local i32 @__lwp_queue_append(i32*, i32*) #1

declare dso_local i32 @wiiuse_send_next_command(%struct.wiimote_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
