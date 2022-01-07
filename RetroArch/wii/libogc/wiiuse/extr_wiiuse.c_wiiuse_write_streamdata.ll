; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_write_streamdata.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_write_streamdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }
%struct.cmd_blk_t = type { i32, i32*, i32 }

@WM_CMD_STREAM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiiuse_write_streamdata(%struct.wiimote_t* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiimote_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.wiimote_t*, %struct.wiimote_t** %6, align 8
  %12 = icmp ne %struct.wiimote_t* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.wiimote_t*, %struct.wiimote_t** %6, align 8
  %15 = call i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %63

18:                                               ; preds = %13
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 20
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %18
  store i32 0, i32* %5, align 4
  br label %63

28:                                               ; preds = %24
  %29 = load %struct.wiimote_t*, %struct.wiimote_t** %6, align 8
  %30 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %29, i32 0, i32 0
  %31 = call i64 @__lwp_queue_get(i32* %30)
  %32 = inttoptr i64 %31 to %struct.cmd_blk_t*
  store %struct.cmd_blk_t* %32, %struct.cmd_blk_t** %10, align 8
  %33 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %10, align 8
  %34 = icmp ne %struct.cmd_blk_t* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %63

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %10, align 8
  %39 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %10, align 8
  %41 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %40, i32 0, i32 0
  store i32 22, i32* %41, align 8
  %42 = load i32, i32* @WM_CMD_STREAM_DATA, align 4
  %43 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %10, align 8
  %44 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 3
  %49 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %10, align 8
  %50 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %10, align 8
  %54 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memcpy(i32* %56, i32* %57, i32 %58)
  %60 = load %struct.wiimote_t*, %struct.wiimote_t** %6, align 8
  %61 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %10, align 8
  %62 = call i32 @__wiiuse_push_command(%struct.wiimote_t* %60, %struct.cmd_blk_t* %61)
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %36, %35, %27, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t*) #1

declare dso_local i64 @__lwp_queue_get(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @__wiiuse_push_command(%struct.wiimote_t*, %struct.cmd_blk_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
