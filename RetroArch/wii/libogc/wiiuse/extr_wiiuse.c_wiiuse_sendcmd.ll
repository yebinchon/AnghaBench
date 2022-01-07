; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_sendcmd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_sendcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }
%struct.cmd_blk_t = type { i32, i32*, i32 }

@WM_CMD_READ_DATA = common dso_local global i64 0, align 8
@WM_CMD_CTRL_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiiuse_sendcmd(%struct.wiimote_t* %0, i64 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiimote_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.wiimote_t*, %struct.wiimote_t** %7, align 8
  %14 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %13, i32 0, i32 0
  %15 = call i64 @__lwp_queue_get(i32* %14)
  %16 = inttoptr i64 %15 to %struct.cmd_blk_t*
  store %struct.cmd_blk_t* %16, %struct.cmd_blk_t** %12, align 8
  %17 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %12, align 8
  %18 = icmp ne %struct.cmd_blk_t* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %59

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %12, align 8
  %23 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 1, %24
  %26 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %12, align 8
  %27 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %12, align 8
  %31 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %12, align 8
  %35 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i64*, i64** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @memcpy(i32* %37, i64* %38, i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @WM_CMD_READ_DATA, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %20
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @WM_CMD_CTRL_STATUS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %12, align 8
  %50 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, 2
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %44, %20
  %56 = load %struct.wiimote_t*, %struct.wiimote_t** %7, align 8
  %57 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %12, align 8
  %58 = call i32 @__wiiuse_push_command(%struct.wiimote_t* %56, %struct.cmd_blk_t* %57)
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %19
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i64 @__lwp_queue_get(i32*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @__wiiuse_push_command(%struct.wiimote_t*, %struct.cmd_blk_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
